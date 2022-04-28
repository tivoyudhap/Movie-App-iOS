//
//  SplashViewModelDelegate.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import Foundation

protocol SplashViewModelDelegate {
    func successAuth()
    func failed(message: String)
}
