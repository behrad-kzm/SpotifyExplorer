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
        let dataBase = RealmPlatform.UseCaseProvider()
        self.package = ServicePackage(networkServices: NetworkPlatform.UseCaseProvider(), dataBaseServices: dataBase, settingsServices: SettingsPlatform.UseCaseProvider(database: dataBase.makeQueryManager()))
    }
    
    func setup(with window: UIWindow) {
        setupKeyboard()
        let mainNavigationController = MainNavigationController()
        window.rootViewController = mainNavigationController
        window.makeKeyAndVisible()
        SplashNavigator(services: package, navigationController: mainNavigationController).setup()
    }
    func setupKeyboard(){
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        IQKeyboardManager.shared.shouldShowToolbarPlaceholder = false
    }
}
