//
//  MoviesRemoteEntity.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation

struct MoviesRemoteEntity: Codable {
    
    var backdropPath: String = ""
    var genreIds: [Int] = []
    var id: Int = 0
    var title: String = ""
    var overview: String = ""
    var releaseDate: String = ""
    var voteAverage: Float = 0.0
    
    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case id = "id"
        case title = "title"
        case overview = "overview"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
    }
}
