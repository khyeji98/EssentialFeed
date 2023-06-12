//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Joy on 2023/03/13.
//

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
