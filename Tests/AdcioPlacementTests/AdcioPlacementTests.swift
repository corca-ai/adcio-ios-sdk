//
//  AdcioPlacementTests.swift
//
//
//  Created by 김민식 on 2023/12/21.
//

import Foundation
import AdcioPlacement
import Core
import XCTest

class AdcioPlacementTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let (_, client) = makeSUT()
        
        XCTAssertTrue(client.requestedURLs.isEmpty)
    }
    
    func test_load_requestDataFromUrl() {
        let url = URL(string: "https://api-dev.adcio.ai/suggestions")!
        let placementID = ""
        
        let (sut, client) = makeSUT(url: url)
        
        sut.adcioCreateSuggestion(placementId: placementID) { _ in }
        
        XCTAssertEqual(client.requestedURLs, [url])
    }
    
    func test_load_Twice_requestsDataFromURLTwice() {
        let placementID = ""
        
        let url = URL(string: "https://a-given-url.com")!
        let (sut, client) = makeSUT(url: url)
        
        sut.adcioCreateSuggestion(placementId: placementID) { _ in }
        sut.adcioCreateSuggestion(placementId: placementID) { _ in }
        
        XCTAssertEqual(client.requestedURLs, [url, url])
    }
    
    func test_load_deliversErrorOnClientError() {
        let placementID = ""
        let (sut, client) = makeSUT()
        
        expect(sut, toCompleteWith: failure(.connectivity)) {
            let clientError = NSError(domain: "Test", code: 0)
            client.complete(with: clientError)
        }
    }
    
    func test_load_deliversErrorOnNon200HttpResponse() {
        let (sut, client) = makeSUT()
        let samples = [199, 201, 300, 400, 500]
        samples.enumerated().forEach { index, code in
            expect(sut, toCompleteWith: failure(.invalidData)) {
                let json = makeItemsJSON([])
                client.complete(withStatusCode: code, data: json, at: index)
            }
        }
    }
    
    func test_load_deliversErrorOn200HTTPResponseWithInvalidJSON() {
        let (sut, client) = makeSUT()
        
        expect(sut, toCompleteWith: failure(.invalidData)) {
            let invalidJSON = Data(bytes: "invalid JSON".utf8)
            client.complete(withStatusCode: 200, data: invalidJSON)
        }
    }
    
    func test_load_deliversNoItemsOn200HTTPResponseWithEmptyJSONList() {
        let (sut, client) = makeSUT()
        
        expect(sut, toCompleteWith: .success([])) {
            let emptyJSONList = makeItemsJSON([])
            client.complete(withStatusCode: 200, data: emptyJSONList)
        }
    }
    
//    func test_load_doesNotDeliverResultAfterSUTInstanceHasBeenDeallocated() {
//        let placementID = ""
//        let url = URL(string: "https://api-dev.adcio.ai/suggestions")!
//        let client = HTTPClientSpy()
//        var sut: PlacementClient? = PlacementClient(client: client, url: url)
//        
//        var capturedErrors = [PlacementResult]()
//        sut?.adcioCreateSuggestion(placementId: placementID) { capturedErrors.append($0)}
//        
//        client.complete(withStatusCode: 200, data: makeItemsJSON([]))
//        
//        XCTAssertTrue(capturedErrors.isEmpty)
//    }
    
    //MARK: - Helpers
    private func makeSUT(url: URL = URL(string: "https://api-dev.adcio.ai/suggestions")!, file: StaticString = #file, line: UInt = #line) -> (sut: PlacementClient, client: HTTPClientSpy) {
        let client = HTTPClientSpy()
        let sut = PlacementClient(client: client, url: url)
        
        trackForMemoryLeaks(sut)
        trackForMemoryLeaks(client)
        
        return (sut, client)
    }
    
    private func failure(_ error: PlacementClient.Error) -> PlacementResult {
        return .failure(error)
    }
    
    private func makeItemsJSON(_ items: [[String: Any]]) -> Data {
        let json = ["items": items]
        return try! JSONSerialization.data(withJSONObject: json)
    }
    
    private func expect(_ sut: PlacementClient, toCompleteWith expectedResult: PlacementResult, when action: () -> Void, file: StaticString = #file, line: UInt = #line) {
        
        let placementID = ""
        let exp = expectation(description: "Wait for load completion")
        
        sut.adcioCreateSuggestion(placementId: placementID) { receivedResult in
            switch (receivedResult, expectedResult) {
            case let (.success(receivedItems), .success(expectedItems)):
                XCTAssertEqual(receivedItems, expectedItems, file: file, line: line)
                
            case let (.failure(receivedError as PlacementClient.Error), .failure(expectedError as PlacementClient.Error)):
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
