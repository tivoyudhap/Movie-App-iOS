//
//  GetTrendingMovieObservableBuilder.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import Foundation
import RxSwift
import RxRetroSwift

class GetTrendingMovieObservableBuilder: BaseObservableBuilder<MoviesContainerRemoteEntity> {
    
    static let shared: GetTrendingMovieObservableBuilder = GetTrendingMovieObservableBuilder()
    
    private override init() { }
    
    override func getObservable<ResultEntity>() -> Observable<Result<ResultEntity, ErrorEntity>> where ResultEntity : Decodable, ResultEntity : Encodable {
        return MovieClient.shared.requestTrendingMovie() as! Observable<Result<ResultEntity, ErrorEntity>>
    }
}
