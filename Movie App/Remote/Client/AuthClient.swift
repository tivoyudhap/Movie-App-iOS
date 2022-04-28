//
//  AuthClient.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import Foundation
import RxSwift
import RxRetroSwift

class AuthClient {
    
    static var shared = AuthClient()
    private let apiClient: ApiClient = ApiClient()
    
    private init() { }
    
    func requestGuestSession() -> Observable<Result<GuestSessionRemoteEntity, ErrorEntity>> {
        let request = RequestModel(httpMethod: .get, path: "3/authentication/guest_session/new?api_key=\(KEY_API)", payload: nil).asURLRequest()
        return apiClient.caller.call(request)
    }
}
