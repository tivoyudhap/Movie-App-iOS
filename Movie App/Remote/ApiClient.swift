//
//  ApiClient.swift
//  Movie App
//
//  Created by Tivo Yudha on 24/04/22.
//

import Foundation
import RxRetroSwift

class ApiClient {
    
    static var shared: ApiClient = ApiClient()
    var caller: RequestCaller = RequestCaller()
    
    init() {
        RequestModel.defaults.baseUrl = "https://api.themoviedb.org/"
    }
}
