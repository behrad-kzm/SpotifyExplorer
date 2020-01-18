//
//  ArtistDetailsViewModel.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import Domain
import SpotifyLogin
final class ArtistDetailsViewModel: ViewModelType {
    
    let navigator: LoginNavigator
    private let networkServices: LoginUseCase
    let appearance: AppearanceProvider
    init(navigator: LoginNavigator, networkServices: LoginUseCase, appearance: AppearanceProvider) {
        self.navigator = navigator
        self.networkServices = networkServices
        self.appearance = appearance
    }
    func getAlbums()  {
//        return networkServices.loginScopes().compactMap{ Scope.init(rawValue: $0) }
    }
    func transform(input: Input) -> Output {
        let errorTracker = ErrorTracker()
        let activityIndicator = ActivityIndicator()
        let action = networkServices.listenToLogin().do(onNext: { [navigator](loggedIn) in
            if !loggedIn {
                let error = NSError(domain: "Acces denied", code: 401, userInfo: ["message": NSLocalizedString("UserDidNotGrantAccess", comment: "")])
                navigator.prepareFor(error: error)
            }
        }).asDriverOnErrorJustComplete().mapToVoid()
        let fetching = activityIndicator.asDriver()
        let errors = errorTracker.asDriver()
        return Output(isFetching: fetching, action: action, error: errors)
    }

}
extension ArtistDetailsViewModel {
    struct Input {
        let loginTrigger: Driver<Void>
    }
    
    struct Output {
        let isFetching: Driver<Bool>
        let action: Driver<Void>
        let error: Driver<Error>
    }
}
