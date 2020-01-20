//
//  AppearanceProvider.swift
//  SettingsPlatform
//
//  Created by Behrad Kazemi on 12/3/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import Domain
final class AppearanceProvider{
     func getColors() -> ColorsPack {
        if UserDefaults.standard.bool(forKey: Constants.Keys.darkMode.rawValue){
            return DarkTheme()
        }
        return LightTheme()
    }
     func getFonts() -> FontsPack {
        return FontsPack()
    }
}
