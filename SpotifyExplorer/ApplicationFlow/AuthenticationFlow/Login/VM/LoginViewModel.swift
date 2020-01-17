//
//  LoginViewModel.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 11/21/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import Domain
import SpotifyLogin
final class LoginViewModel: ViewModelType {
    
    let navigator: LoginNavigator
    private let networkServices: LoginUseCase
    let appearance: AppearanceProvider
    init(navigator: LoginNavigator, networkServices: LoginUseCase, appearance: AppearanceProvider) {
        self.navigator = navigator
        self.networkServices = networkServices
        self.appearance = appearance
    }
    func getLoginScops() -> [Scope] {
        return networkServices.loginScopes().compactMap{ Scope.init(rawValue: $0) }
    }
    func transform(input: Input) -> Output {
        let errorTracker = ErrorTracker()
        let activityIndicator = ActivityIndicator()
        let action = networkServices.listenToLogin().do(onNext: { [navigator](loggedIn) in
            if loggedIn {
                navigator.toHome()
                return
            }
            let error = NSError(domain: "Acces denied", code: 401, userInfo: ["message": NSLocalizedString("UserDidNotGrantAccess", comment: "")])
            navigator.prepareFor(error: error)
        }).asDriverOnErrorJustComplete().mapToVoid()
        let fetching = activityIndicator.asDriver()
        let errors = errorTracker.asDriver()
        return Output(isFetching: fetching, action: action, error: errors)
    }
}
extension LoginViewModel {
    struct Input {
        let loginTrigger: Driver<Void>
    }
    
    struct Output {
        let isFetching: Driver<Bool>
        let action: Driver<Void>
        let error: Driver<Error>
    }
}