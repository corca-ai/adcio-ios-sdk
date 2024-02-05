//
//  HTTPClientTests.swift
//
//
//  Created by 김민식 on 2023/12/21.
//

import XCTest
import Core

class HTTPClientTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let sut = makeSUT()
        
        XCTAssertTrue(sut.requestedURLs.isEmpty)
    }
    
    func test_load_requestsDataFromURL() {
        let sut = makeSUT()
        let url = URL(string: "https://a-given-url.com")!
        
        sut.request(from: url, parameter: [:]) { _ in }
        
        XCTAssertEqual(sut.requestedURLs, [url])
    }
    
    func test_loadTwice_requestsDataFromURLTwice() {
        let sut = makeSUT()
        let url = URL(string: "https://a-given-url.com")!
        let url2 = URL(string: "https://b-given-url.com")!
        
        sut.request(from: url, parameter: [:]) { _ in }
        sut.request(from: url2, parameter: [:]) { _ in }
        
        XCTAssertEqual(sut.requestedURLs, [url, url2])
    }
    
    //MARK: - Helpers
    private func makeSUT() -> HTTPClientSpy {
        let sut = HTTPClientSpy()
        return sut
    }

    private class HTTPClientSpy: HTTPClient {
        private var messages = [(url: URL, completion: (HTTPClientResult) -> Void)]()
        
        var requestedURLs: [URL] {
            return messages.map { $0.url }
        }
        
        func request(from url: URL, parameter: [String : Any], completion: @escaping (HTTPClientResult) -> Void) {
            messages.append((url, completion))
        }
    }
}
