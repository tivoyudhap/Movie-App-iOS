//
//  CategoryRemoteEntity.swift
//  Movie App
//
//  Created by Tivo Yudha on 24/04/22.
//

import Foundation

struct CategoryRemoteEntity: Codable {
    
    var id: Int = 0
    var name: String = ""
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }
}
