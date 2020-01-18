//
//  MainTabbarNavigator.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 12/22/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//
import Foundation
import UIKit
import Domain
import BEKCurveTabbar
class MainTabbarNavigator {
    internal let navigationController: UINavigationController
    internal let services: ServicePackage
    internal let tabbarVC: BEKCurveTabbarController
    init(services: ServicePackage, navigationController: UINavigationController, tabbar: BEKCurveTabbarController) {
        self.services = services
        self.navigationController = navigationController
        self.tabbarVC = tabbar
    }
    
    func setup(withIndex index: Int = 0) {
        //UITabBar.appearance().tintColor = UIColor.white
//        let attributes = [NSAttributedString.Key.font: Appearance.fonts.labels.subtitle(), NSAttributedString.Key.foregroundColor: UIColor.clear]
//        let attributes1 = [NSAttributedString.Key.font: Appearance.fonts.labels.subtitle(), NSAttributedString.Key.foregroundColor: Appearance.colors.blue.filled()]
        
//        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes(attributes1, for: .selected)
        tabbarVC.loadView()
        let vc = UIViewController()
        vc.loadView()
        vc.view.backgroundColor = .red
        tabbarVC.viewControllers = [vc]
        vc.tabBarItem.title = "برنده شو" // tabbar titlee
        vc.tabBarItem.image = UIImage(named: "TabHome") // deselect image

        navigationController.hero.isEnabled = true
        navigationController.modalTransitionStyle = .crossDissolve
        navigationController.pushViewController(tabbarVC, animated: true)
    }
    
    func toIndex(index: Int){
        tabbarVC.selectedIndex = index
    }
}
