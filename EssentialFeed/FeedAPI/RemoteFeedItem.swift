//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Joy on 2023/06/12.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let image: URL
}
