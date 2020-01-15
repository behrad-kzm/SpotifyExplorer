//
//  SceneDelegate.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/15/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow!
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window.windowScene = windowScene
        
        ApplicationPlatformInjector.shared.setup(with: window)
    }
}

