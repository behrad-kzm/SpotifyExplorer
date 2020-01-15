//
//  ColorsPack.swift
//  SettingsPlatform
//
//  Created by Behrad Kazemi on 12/6/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import UIKit

public class ColorsPack{
    
    public let textFieldBackgroundColo: UIColor
    public let textFieldFocusedBackgroundColor: UIColor
    public let backgroundColor: UIColor
    public let titleTextColor: UIColor
    public let buttonTextColor: UIColor
    public let subtitleTextColor: UIColor
    public let primaryColor: UIColor
    public let placeHolderTextColor: UIColor
    public let errorColor: UIColor
    public let shadowColor: UIColor
    init() {
        self.backgroundColor = UIColor.systemBackground
        self.titleTextColor = UIColor.systemGray
        self.buttonTextColor = UIColor(hex: Appearance.Colors.white.highest.rawValue, alpha: 1)
        self.subtitleTextColor = UIColor.label
        self.primaryColor = UIColor(hex: Appearance.Colors.yellow.highest.rawValue, alpha: 1)
        self.placeHolderTextColor = UIColor.systemGray
        self.errorColor = UIColor(hex: Appearance.Colors.red.pinky.rawValue, alpha: 1)
        self.shadowColor = UIColor.black
    }
    
}
