//
//  FollowedUsersNavigator.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import Domain
import RxCocoa

final class FollowedUsersNavigator: Navigator {
    
    private let tabBarVC: UITabBarController
    
    init(services: ServicePackage, navigationController: UINavigationController, tabBar: UITabBarController) {
        self.tabBarVC = tabBar
        super.init(services: services, navigationController: navigationController)
    }
    
    func setup(){
        let targetViewController = FollowedUsersViewController(nibName: "FollowedUsersViewController", bundle: nil)
        targetViewController.isHeroEnabled = true
        targetViewController.viewModel = FollowedUsersViewModel(navigator: self, networkServices: services.networkServices.getFollowedUsersUseCases(), appearance: services.appearance)
        navigationController.isHeroEnabled = true
        navigationController.heroNavigationAnimationType = .none
        navigationController.pushViewController(targetViewController, animated: true)
    }
    
    func toHome(){
        print("Login Success")
    }
}
