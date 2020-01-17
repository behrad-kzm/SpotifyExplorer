//
//  LoginNavigator.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 11/22/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import Domain
import RxCocoa

final class LoginNavigator: Navigator {
    func setup(){
        let loginVC = LoginViewController(nibName: "LoginViewController", bundle: nil)
        loginVC.isHeroEnabled = true
//        loginVC.viewModel = LoginViewModel(navigator: self, networkServices: services., appearance: <#T##AppearanceProvider#>)
//        loginVC.viewModel = EnterPhoneViewModel(navigator: self/*, networkServices: services.networkServices.makeSetPhoneNumberUseCase(), appearance: services.settings.makeAppearanceProvider()*/)
        navigationController.isHeroEnabled = true
        navigationController.heroNavigationAnimationType = .none
        navigationController.pushViewController(loginVC, animated: true)
    }
    func toVerify(phoneNumber: String){
//        VerifyPhoneNavigator(services: services, navigationController: navigationController, phone: phoneNumber).setup()
    }
}
