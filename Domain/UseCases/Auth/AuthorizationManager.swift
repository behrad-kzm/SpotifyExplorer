//
//  AuthorizationManager.swift
//  Domain
//
//  Created by Behrad Kazemi on 11/19/19.
//  Copyright © 2019 Golrang. All rights reserved.
//

import Foundation
import RxSwift
public protocol AuthorizationManager {
    
    var status: AuthenticationStatus { get }
    var accessToken: String! { get }
    func getStatusAsObservable() -> Observable<AuthenticationStatus>    
    func tokenExpirationHandler(response: HTTPURLResponse)
    func update(token: String)
    func logOut(completion: @escaping ()->())
    func proxy() -> AppProxyProtocol
    func getNewToken()
}
