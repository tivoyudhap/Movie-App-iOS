//
//  CategoryContainerRemoteEntity.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation

struct CategoryContainerRemoteEntity: Codable {
    
    var genres: [CategoryRemoteEntity] = []
    
    enum CodingKeys: String, CodingKey {
        case genres = "genres"
    }
}
