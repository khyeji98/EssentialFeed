//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Joy on 2023/03/22.
//

// 느슨한 결합을 위해 인터페이스(= 프로토콜)로 변경 + 동작의 구현이 없어지는 것이 중요한 포인트
public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error) -> Void)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
    }
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Error) -> Void) {
        client.get(from: url) { error in
            completion(.connectivity)
        }
    }
}
