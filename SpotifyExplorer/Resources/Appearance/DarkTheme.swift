//
//  DarkTheme.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/19/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import UIKit

class DarkTheme: ColorsPack {
    
    let backgroundColor: UIColor
    let titleTextColor: UIColor
    let buttonTextColor: UIColor
    let subtitleTextColor: UIColor
    let primaryColor: UIColor
    let placeHolderTextColor: UIColor
    let errorColor: UIColor
    let shadowColor: UIColor
    
    init() {
        self.backgroundColor = UIColor(hex: Appearance.Colors.dark.black.rawValue, alpha: 1)
        self.titleTextColor = UIColor(hex: Appearance.Colors.white.light.rawValue, alpha: 1)
        self.buttonTextColor = UIColor(hex: Appearance.Colors.white.light.rawValue, alpha: 1)
        self.subtitleTextColor = UIColor(hex: Appearance.Colors.white.grayness.rawValue, alpha: 1)
        self.primaryColor = UIColor(hex: Appearance.Colors.green.highest.rawValue, alpha: 1)
        self.placeHolderTextColor = UIColor(hex: Appearance.Colors.white.grayness.rawValue, alpha: 1)
        self.errorColor = UIColor(hex: Appearance.Colors.red.pinky.rawValue, alpha: 1)
        self.shadowColor = UIColor(hex: Appearance.Colors.white.shine.rawValue, alpha: 1)
    }

}
