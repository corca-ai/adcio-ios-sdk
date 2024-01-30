//
//  ADcioAnalyticsTests.swift
//
//
//  Created by 김민식 on 2023/12/21.
//

import Foundation
import AdcioAnalytics
import Core
import XCTest

class AdcioAnalyticsTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let (_, client) = makeSUT()
        
        XCTAssertTrue(client.requestedURLs.isEmpty)
    }
    
    func test_load_requestDataFromUrl() {
        let orderID: String = "123"
        let productIdOnStore: String = "39"
        let amount: Int = 2
        let baseURL = URL(string: "receiver.adcio.ai")!
        let expectedURL = URL(string: "https://receiver.adcio.ai/events/purchase")!
        let (sut, client) = makeSUT(url: baseURL)
        
        sut.productPurchased(orderID: orderID, productIDOnStore: productIdOnStore, amount: amount) { _ in }
        
        XCTAssertEqual(client.requestedURLs, [expectedURL])
    }

    func test_load_Twice_requestsDataFromURLTwice() {
        let orderID = String()
        let productIdOnStore = String()
        let amount = Int()
        let baseURL = URL(string: "receiver.adcio.ai")!
        let expectedURL = URL(string: "https://receiver.adcio.ai/events/purchase")!
        let (sut, client) = makeSUT(url: baseURL)
        
        sut.productPurchased(orderID: orderID, productIDOnStore: productIdOnStore, amount: amount) { _ in }
        sut.productPurchased(orderID: orderID, productIDOnStore: productIdOnStore, amount: amount) { _ in }
        
        XCTAssertEqual(client.requestedURLs, [expectedURL, expectedURL])
    }
    
    func test_load_deliversErrorOnClientError() {
        let (sut, client) = makeSUT()
        
        expect(sut, toCompleteWith: failure(.connectivity)) {
            let clientError = NSError(domain: "Test", code: 0)
            client.complete(with: clientError)
        }
    }
    
    func test_load_deliversNoItemsOn201HTTPResponseWithEmptyJSONList() {
        let (sut, client) = makeSUT()
        
        expect(sut, toCompleteWith: .failure(AnalyticsClient.Error.invalidData)) {
            let emptyJSONList = makeItemsJSON([])
            client.complete(withStatusCode: 201, data: emptyJSONList)
        }
    }
    
    //MARK: - Helpers
    private func makeSUT(url: URL = URL(string: "receiver.adcio.ai")!, file: StaticString = #file, line: UInt = #line) -> (sut: AnalyticsClient, client: HTTPClientSpy) {
        let client = HTTPClientSpy()
        let sut = AnalyticsClient(clientID: "f8f2e298-c168-4412-b82d-98fc5b4a114a", apiClient: client, baseURL: url)
        
        trackForMemoryLeaks(sut)
        trackForMemoryLeaks(client)
        
        return (sut, client)
    }
    
    private func failure(_ error: AnalyticsClient.Error) -> AnalyticsResult {
        return .failure(error)
    }
    
    private func makeItemsJSON(_ items: [[String: Any]]) -> Data {
        let json = ["items": items]
        return try! JSONSerialization.data(withJSONObject: json)
    }
    
    private func expect(_ sut: AnalyticsClient, toCompleteWith expectedResult: AnalyticsResult, when action: () -> Void, file: StaticString = #file, line: UInt = #line) {
        
        let orderID = String()
        let productIdOnStore = String()
        let amount = Int()
        let exp = expectation(description: "Wait for load completion")
        
        sut.productPurchased(orderID: orderID, productIDOnStore: productIdOnStore, amount: amount) { receivedResult in
            switch (receivedResult, expectedResult) {
            case let (.success(receivedItems), .success(expectedItems)):
                XCTAssertEqual(receivedItems, expectedItems, file: file, line: line)
                
            case let (.failure(receivedError as AnalyticsClient.Error), .failure(expectedError as AnalyticsClient.Error)):
                XCTAssertEqual(receivedError, expectedError, file: file, line: line)
                
            default:
                XCTFail("Expected result \(expectedResult) got \(receivedResult) instead", file: file, line: line)
            }
            
            exp.fulfill()
        }
        
        action()
        
        wait(for: [exp], timeout: 1.0)
    }
    
    private class HTTPClientSpy: HTTPClient {
        private var messages = [(url: URL, completion: (HTTPClientResult) -> Void)]()
        
        var requestedURLs: [URL] {
            return messages.map { $0.url }
        }
        
        func request(from url: URL, parameter: [String : Any], completion: @escaping (Core.HTTPClientResult) -> Void) {
            messages.append((url, completion))
        }
        
        func complete(with error: Error, at index: Int = 0) {
            messages[index].completion(.failure(error))
        }
        
        func complete(withStatusCode code: Int, data: Data, at index: Int = 0) {
            let response = HTTPURLResponse(
                url: requestedURLs[index],
                statusCode: code,
                httpVersion: nil,
                headerFields: nil
            )!
            
            messages[index].completion(.success(data, response))
        }
    }
}

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memoty leak.", file: file, line: line)
        }
    }
}
