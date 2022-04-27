//
//  CategoryMapper.swift
//  Movie App
//
//  Created by Tivo Yudha on 24/04/22.
//

import Foundation

class CategoryMapper {
    
    static func map(entity: CategoryRemoteEntity) -> CategoryUIEntity {
        return CategoryUIEntity(
            id: entity.id,
            name: entity.name
        )
    }
}
