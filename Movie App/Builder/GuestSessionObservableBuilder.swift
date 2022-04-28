//
//  GuestSessionObservableBuilder.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import Foundation
import RxSwift
import RxRetroSwift

class GuestSessionObservableBuilder: BaseObservableBuilder<GuestSessionRemoteEntity> {
    
    static let shared: GuestSessionObservableBuilder = GuestSessionObservableBuilder()
    
    private override init() { }
    
    override func getObservable<ResultEntity>() -> Observable<Result<ResultEntity, ErrorEntity>> where ResultEntity : Decodable, ResultEntity : Encodable {
        return AuthClient.shared.requestGuestSession() as! Observable<Result<ResultEntity, ErrorEntity>>
    }
}
