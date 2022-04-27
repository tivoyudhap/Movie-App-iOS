//
//  DashboardViewModelDelegate.swift
//  Movie App
//
//  Created by Tivo Yudha on 25/04/22.
//

import Foundation

protocol DashboardViewModelDelegate {
    func successLoadCategoryList()
    func onError(message: String)
}
