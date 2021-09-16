//
//  Video.swift
//  YouTube-api-Alamofire
//
//  Created by 木元健太郎 on 2021/09/13.
//

import Foundation

class Video: Decodable {
    
    let kind: String
    let items: [Item]
    
}

class Item: Decodable {
    
    var channel: Channel?
    let snippet: Snippet
    
}

class Snippet: Decodable {
    
    let publishedAt: String
    let channelId: String
    let title: String
    let description: String
    let thumbnails: Thumbnail
    
}

class Thumbnail: Decodable {
    
    let medium: ThumbnailInfo
    let high: ThumbnailInfo
    
}

class ThumbnailInfo: Decodable {
    
    let url: String
    let width: Int?
    let height: Int?
    
}