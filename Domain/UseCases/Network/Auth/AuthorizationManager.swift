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
    var uuid: String! { get }
    var accessToken: String! { get }
    var refreshToken: String! { get }

    func LogOut(completion: @escaping ()->())
    
    func getNewToken() -> Observable<Bool>
}
