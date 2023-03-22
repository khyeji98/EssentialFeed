//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Joy on 2023/03/13.
//

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func laod(completion: @escaping (LoadFeedResult) -> Void)
}
