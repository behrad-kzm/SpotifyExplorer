//
//  ColorsPack.swift
//  SettingsPlatform
//
//  Created by Behrad Kazemi on 12/6/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import UIKit

protocol ColorsPack {
    
    var backgroundColor: UIColor { get }
    var titleTextColor: UIColor { get }
    var buttonTextColor: UIColor { get }
    var subtitleTextColor: UIColor { get }
    var primaryColor: UIColor { get }
    var placeHolderTextColor: UIColor { get }
    var errorColor: UIColor { get }
    var shadowColor: UIColor  { get }
}
