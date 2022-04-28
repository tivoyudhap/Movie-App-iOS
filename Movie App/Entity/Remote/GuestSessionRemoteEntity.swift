//
//  GuestSessionRemoteEntity.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import Foundation

struct GuestSessionRemoteEntity: Codable {
    
    var guestSessionId: String = ""
    var expiresAt: String = ""
    
    enum CodingKeys: String, CodingKey {
        case guestSessionId = "guest_session_id"
        case expiresAt = "expires_at"
    }
}
