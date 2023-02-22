//
//  YouTubeSearchResponse.swift
//  Netfliy Clone
//
//  Created by Shishir_Mac on 22/2/23.
//

import Foundation

struct YouTubeSearchResponse: Codable {
    let items: [ViedoElement]
}

struct ViedoElement: Codable {
    let id: IdViedoElement
}

struct IdViedoElement: Codable {
    let kind: String
    let videoID: String
}
