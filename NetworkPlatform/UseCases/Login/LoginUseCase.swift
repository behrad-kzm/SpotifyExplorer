//
//  LoginUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import RxSwift
import Domain
import SpotifyLogin
public final class LoginUseCase: Domain.LoginUseCase  {

    let handler: Domain.AuthorizationManager
    init(handler: Domain.AuthorizationManager) {
        self.handler = handler
    }
    public func loginScopes() -> [String] {
        return [Scope.userFollowRead.rawValue]
    }
    
    public func listenToLogin() -> Observable<Bool> {
        return handler.getStatusAsObservable().skip(1).map{ $0 == .authorized ? true : false}
    }
}
