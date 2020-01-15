//
//  EnterPhoneViewModel.swift
//  OKala
//
//  Created by Behrad Kazemi on 11/21/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import Domain

final class EnterPhoneViewModel: ViewModelType {
    
    let navigator: EnterPhoneNavigator
    private let networkServices: String
    let appearance: AppearanceProvider
    init(navigator: EnterPhoneNavigator, networkServices: String, appearance: AppearanceProvider) {
        self.navigator = navigator
        self.networkServices = networkServices
        self.appearance = appearance
    }
    
    func transform(input: Input) -> Output {
        let errorTracker = ErrorTracker()
        let activityIndicator = ActivityIndicator()

        let fetching = activityIndicator.asDriver()
        let errors = errorTracker.asDriver()
        return Output(isFetching: fetching, error: errors)
    }
}
extension EnterPhoneViewModel {
    
    struct Input {
    }
    
    struct Output {
        let isFetching: Driver<Bool>

        let error: Driver<Error>
    }
}
