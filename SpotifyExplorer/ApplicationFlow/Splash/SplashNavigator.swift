//
//  SplashNavigator.swift
//
//  Created by Behrad Kazemi on 12/29/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation
import Domain
import UIKit
import Hero
import BEKCurveTabbar


final class SplashNavigator: Navigator {
	func setup() {
		let splashVC = SplashViewController(nibName: "SplashViewController", bundle: nil)
        splashVC.viewModel = SplashViewModel(navigator: self/*, authorization: services.networkServices.getAuthorizationManager()*/)
		navigationController.viewControllers = [splashVC]
        
	}
	
	func toHome() {
//        MainTabbarNavigator(services: services, navigationController: navigationController, tabbar: BEKCurveTabbarController.instantiate()).setup()
	}
    
    func toLogin(){
        LoginNavigator(services: services, navigationController: navigationController).setup()
    }
	
	func toOnboarding() {
		
	}
	
}
