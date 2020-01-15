//
//  FontsPack.swift
//  SettingsPlatform
//
//  Created by Behrad Kazemi on 12/6/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation

public class FontsPack{
    
    public let textField: FontModel
    public let titleHeader: FontModel
    public let warningText: FontModel
    public let subtitle: FontModel
    public let buttonTitle: FontModel
    public let codeTextField: FontModel
    public let linkButton: FontModel
    init() {
        self.textField = FontModel(name: Appearance.Fonts.names.regular.rawValue, size: Appearance.Fonts.sizes.h3.rawValue)
        self.buttonTitle = FontModel(name: Appearance.Fonts.names.regular.rawValue, size: Appearance.Fonts.sizes.h3.rawValue)
        self.titleHeader = FontModel(name: Appearance.Fonts.names.bold.rawValue, size: Appearance.Fonts.sizes.h2.rawValue)
        self.codeTextField = FontModel(name: Appearance.Fonts.names.bold.rawValue, size: Appearance.Fonts.sizes.h1.rawValue)
        self.warningText = FontModel(name: Appearance.Fonts.names.light.rawValue, size: Appearance.Fonts.sizes.h5.rawValue)
        self.subtitle = FontModel(name: Appearance.Fonts.names.bold.rawValue, size: Appearance.Fonts.sizes.h5.rawValue)
        self.linkButton = FontModel(name: Appearance.Fonts.names.bold.rawValue, size: Appearance.Fonts.sizes.h5.rawValue)
    }
}
