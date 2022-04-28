//
//  UserDefaultManager.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import Foundation

class UserDefaultManager {
    
    static func getGuestSessionKey() -> String {
        return UserDefaults.standard.string(forKey: "guest_session_key") ?? ""
    }
    
    static func setGuestSessionKey(guestKey: String) {
        UserDefaults.standard.set(guestKey, forKey: "guest_session_key")
    }
    
    static func setExpiredTime(expiredAt: TimeInterval) {
        UserDefaults.standard.set(expiredAt, forKey: "expired_at")
    }
    
    static func getExpiredTime() -> TimeInterval {
        return UserDefaults.standard.double(forKey: "expired_at")
    }
}
