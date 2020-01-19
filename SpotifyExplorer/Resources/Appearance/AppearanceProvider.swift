//
//  AppearanceProvider.swift
//  SettingsPlatform
//
//  Created by Behrad Kazemi on 12/3/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
final class AppearanceProvider{
     func getColors() -> ColorsPack {
        return DarkTheme()
    }
     func getFonts() -> FontsPack {
        return FontsPack()
    }
}
