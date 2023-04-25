//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Joy on 2023/04/03.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

// 느슨한 결합을 위해 인터페이스(= 프로토콜)로 변경 + 동작의 구현이 없어지는 것이 중요한 포인트
public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
