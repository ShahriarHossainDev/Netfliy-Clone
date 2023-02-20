//
//  APICaller.swift
//  Netfliy Clone
//
//  Created by Shishir_Mac on 21/2/23.
//

import Foundation

struct Constants {
    static let API_KEY = "b04fd7dd356981d7d9d9076ad027bf2c"
    static let baseURL = "https://api.themoviedb.org/3/"
}

enum APIError {
    case failedTogetData
}


class APICaller {
    static let shared = APICaller()
    
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
