//
//  MovieMapper.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation

class MovieMapper {
    
    static func map(entity: MoviesRemoteEntity) -> MovieUIEntity {
        return MovieUIEntity(
            backdropPath: entity.backdropPath,
            genreIds: entity.genreIds,
            id: entity.id,
            title: entity.title,
            overview: entity.overview,
            releaseDate: entity.releaseDate
        )
    }
}
