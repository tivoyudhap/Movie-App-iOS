//
//  MoviesViewModelDelegate.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation

protocol MoviesViewModelDelegate {
    func onSuccessLoadData()
    func onError(message: String)
}
