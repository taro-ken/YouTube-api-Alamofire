//
//  Channel.swift
//  YouTube-api-Alamofire
//
//  Created by 木元健太郎 on 2021/09/13.
//

import Foundation

class Channel: Decodable {
    
    let items: [ChannelItem]
    
}

class ChannelItem: Decodable {
    
    let snippet: ChannelSnippet
    
}

class ChannelSnippet: Decodable {
    
    let title: String
    let thumbnails: Thumbnail
    
}
