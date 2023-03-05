//
//  YouTubeSearchResponse.swift
//  Netfliy Clone
//
//  Created by Shishir_Mac on 22/2/23.
//

import Foundation

struct YouTubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
