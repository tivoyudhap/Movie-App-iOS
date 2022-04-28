//
//  MovieClient.swift
//  Movie App
//
//  Created by Tivo Yudha on 24/04/22.
//

import Foundation
import RxSwift
import RxRetroSwift

class MovieClient {
    
    static var shared = MovieClient()
    private let apiClient: ApiClient = ApiClient()
    
    private init() { }
    
    func requestMovieList() -> Observable<Result<CategoryContainerRemoteEntity, ErrorEntity>> {
        let request = RequestModel(httpMethod: .get, path: "3/genre/movie/list?api_key=\(KEY_API)", payload: nil).asURLRequest()
        return apiClient.caller.call(request)
    }
    
    func requestMovieListByCategory(categoryId: Int) -> Observable<Result<MoviesContainerRemoteEntity, ErrorEntity>> {
        let request = RequestModel(httpMethod: .get, path: "3/discover/movie?api_key=\(UserDefaultManager.getGuestSessionKey())&with_genres=\(categoryId)", payload: nil).asURLRequest()
        return apiClient.caller.call(request)
    }
}
