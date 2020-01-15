//
//  UseCaseProvider.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 11/17/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import Domain

public final class UseCaseProvider: Domain.NetworkUseCaseProvider {

    private let networkProvider: NetworkProvider

    public init() {
        networkProvider = NetworkProvider()
    }
    
    //MARK: - Get Token + Login
//    public func getAuthorizationManager() -> Domain.AuthorizationManager {
//        return AuthorizationManager.shared
//    }
//    public func makeSetPhoneNumberUseCase() -> Domain.SetPhoneNumberUseCase {
//        return SetPhoneNumberUseCase(network: networkProvider.makeSetPhoneNetwork())
//    }
//    public func makeVerifyPhoneUseCase() -> Domain.VerifyPhoneNumberUseCase {
//        return VerifyPhoneNumberUseCase(network: networkProvider.makeVerifyNetwork(), manager: AuthorizationManager.shared)
//    }
}
