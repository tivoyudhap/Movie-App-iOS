//
//  SplashViewModel.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import Foundation

class SplashViewModel {
    
    private var delegate: SplashViewModelDelegate!
    
    init (delegate: SplashViewModelDelegate) {
        self.delegate = delegate
    }
    
    func requestGuestAuthentication() {
        GuestSessionObservableBuilder.shared.execute { entity in
            UserDefaultManager.setGuestSessionKey(guestKey: entity.guestSessionId)
            UserDefaultManager.setExpiredTime(expiredAt: entity.expiresAt.convertToTimeInterval())
            self.delegate?.successAuth()
        } failed: { message in
            self.delegate?.failed(message: message)
        }
    }
}
