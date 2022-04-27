//
//  GetCategoryObservableBuilder.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation

import RxSwift
import RxRetroSwift

class GetCategoryObservableBuilder: BaseObservableBuilder<CategoryContainerRemoteEntity> {
    
    static let shared: GetCategoryObservableBuilder = GetCategoryObservableBuilder()
    
    private override init() { }
    
    override func getObservable<ResultEntity>() -> Observable<Result<ResultEntity, ErrorEntity>> where ResultEntity : Decodable, ResultEntity : Encodable {
        return MovieClient.shared.requestMovieList() as! Observable<Result<ResultEntity, ErrorEntity>>
    }
}
