//
//  ApplicationPlatformInjector.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 11/19/19.
//  Copyright © 2019 BekApps. All rights reserved.
//
import UIKit
import Domain
import NetworkPlatform
final class ApplicationPlatformInjector {
    
    static let shared = ApplicationPlatformInjector()
    private let package: ServicePackage
    
    private init() {
        self.package = ServicePackage(networkServices: NetworkPlatform.UseCaseProvider(), appearance: AppearanceProvider())
    }
    
    func setup(with window: UIWindow) {
        
        let mainNavigationController = MainNavigationController()
        window.rootViewController = mainNavigationController
        window.makeKeyAndVisible()
        SplashNavigator(services: package, navigationController: mainNavigationController).setup()
    }

}
