//
//  SplashViewModel.swift
//
//  Created by Behrad Kazemi on 12/29/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import Domain

final class SplashViewModel {
    
    private let navigator: SplashNavigator
    private let authorization: AuthorizationManager
    let scalePop: CGFloat = 0.05
    init( navigator: SplashNavigator, authorization: AuthorizationManager) {
        self.navigator = navigator
        self.authorization = authorization
    }
    func popLoginIfNeededOrContinue(handler: @escaping ()->()) {
        if authorization.status == .authorized {
            navigator.toHome()
            return
        }
        navigator.toLogin()
    }
}
