//
//  MoviesContainerRemoteEntity.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation

struct MoviesContainerRemoteEntity: Codable {
    
    var page: Int = 0
    var results: [MoviesRemoteEntity] = []
    
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
    }
}
