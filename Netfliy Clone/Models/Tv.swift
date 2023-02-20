//
//  Tv.swift
//  Netfliy Clone
//
//  Created by Shishir_Mac on 21/2/23.
//

import Foundation
struct TrendingTvsResponse: Codable {
    let results: [Tv]
}

struct Tv: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let vote_average: Double
    let release_date: String?
    let popularity: Double
    let title: String?
}