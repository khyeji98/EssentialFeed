//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Joy on 2023/03/22.
//

import XCTest

class RemoteFeedLoader {
    let client: HTTPClient
    
    init(client: HTTPClient) {
        self.client = client
    }
    
    func load() {
        client.get(from: URL(string: "https://a-url.com")!)
    }
}

// 느슨한 결합을 위해 인터페이스(= 프로토콜)로 변경 + 동작의 구현이 없어지는 것이 중요한 포인트
protocol HTTPClient {
    func get(from url: URL)
}

class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?
    
    func get(from url: URL) {
        requestedURL = url
    }
}

class RemoteFeedLoaderTests: XCTestCase {
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClientSpy()
        _ = RemoteFeedLoader(client: client)
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(client: client)
        
        // load하면 URL을 가져온다.
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
}
