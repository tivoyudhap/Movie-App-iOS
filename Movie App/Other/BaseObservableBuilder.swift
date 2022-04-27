//
//  BaseObservableBuilder.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation
import RxSwift
import RxRetroSwift

protocol ObservableBuilderProtocol {
    func getObservable<ResultEntity: Codable>() -> Observable<Result<ResultEntity, ErrorEntity>>
}

class BaseObservableBuilder<ResultEntity: Codable>: ObservableBuilderProtocol {
    func getObservable<ResultEntity>() -> Observable<Result<ResultEntity, ErrorEntity>> where ResultEntity : Decodable, ResultEntity : Encodable {
        fatalError("Should implement observable")
    }
    
    func execute(success: @escaping (_ entity: ResultEntity) -> Void, failed: @escaping (_ message: String) -> Void) {
        _ = (getObservable() as Observable<Result<ResultEntity, ErrorEntity>>).subscribe { result in
            DispatchQueue.main.async {
                if let error = result.error {
                    var defaultMessage: String = "Error calling api"
                    if let errorCode = error.errorCode {
                        defaultMessage = "Error with code \(errorCode). Please contact the developer :("
                    }
                    
                    if let errorDetail = error.errorDetail {
                        defaultMessage = errorDetail
                    }
                    
                    failed(defaultMessage)
                    return
                }
                
                if let value = result.value {
                    success(value)
                    return
                }
            }
        } onError: { error in
            DispatchQueue.main.async {
                failed(error.localizedDescription)
            }
        }
    }
}
