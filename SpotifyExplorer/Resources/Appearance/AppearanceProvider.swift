//
//  AppearanceProvider.swift
//  SettingsPlatform
//
//  Created by Behrad Kazemi on 12/3/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
public final class AppearanceProvider{
    public func getColors() -> ColorsPack {
        return ColorsPack()
    }
    public func getFonts() -> FontsPack {
        return FontsPack()
    }
}
