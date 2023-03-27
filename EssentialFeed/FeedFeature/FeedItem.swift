//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Joy on 2023/03/13.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
