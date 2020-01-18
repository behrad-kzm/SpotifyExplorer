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
import BEKCurveTabbar
final class LoginNavigator: Navigator {
    
    func setup(){
        let loginVC = LoginViewController(nibName: "LoginViewController", bundle: nil)
        loginVC.isHeroEnabled = true
        loginVC.viewModel = LoginViewModel(navigator: self, networkServices: services.networkServices.getLoginUseCases(), appearance: services.appearance)
        navigationController.isHeroEnabled = true
        navigationController.heroNavigationAnimationType = .none
        navigationController.pushViewController(loginVC, animated: true)
    }
    func toHome(){
        let tabbar = BEKCurveTabbarController()
        FollowedUsersNavigator(services: services, navigationController: navigationController, tabBar: tabbar).setup()
    }
}
