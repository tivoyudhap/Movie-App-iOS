//
//  ErrorEntity.swift
//  Movie App
//
//  Created by Tivo Yudha on 24/04/22.
//

import Foundation
import RxRetroSwift

struct ErrorEntity: HasErrorInfo & Codable {
    var errorCode: Int?
    
    var errorDetail: String?
    
    enum CodingKeys: String, CodingKey {
        case errorCode = "code"
        case errorDetail = "message"
    }
}
