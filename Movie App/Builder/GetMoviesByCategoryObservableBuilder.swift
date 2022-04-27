//
//  GetMoviesByCategoryObservableBuilder.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation
import RxSwift
import RxRetroSwift

class GetMoviesByCategoryObservableBuilder: BaseObservableBuilder<MoviesContainerRemoteEntity> {
    
    static let shared: GetMoviesByCategoryObservableBuilder = GetMoviesByCategoryObservableBuilder()
    private var categoryId: Int = 0
    
    private override init() { }
    
    func setParams(categoryId: Int) -> GetMoviesByCategoryObservableBuilder {
        self.categoryId = categoryId
        return self
    }
    
    override func getObservable<ResultEntity>() -> Observable<Result<ResultEntity, ErrorEntity>> where ResultEntity : Decodable, ResultEntity : Encodable {
        return MovieClient.shared.requestMovieListByCategory(categoryId: categoryId) as! Observable<Result<ResultEntity, ErrorEntity>>
    }
}
