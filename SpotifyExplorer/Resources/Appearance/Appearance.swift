//
//  Appearance.swift
//  SettingsPlatform
//
//  Created by Behrad Kazemi on 12/3/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import UIKit

enum Appearance {
    enum Colors {
        enum red: String {
            case highest = "ff0000"
            case pinky = "FC3158"
            case warm = "990000"
        }
        enum blue: String {
            case sky = "3eadcf"
            case greeny = "abe9cd"
            case primary = "4A90E2"
        }
        enum white: String {
            case highest = "FFFFFF"
            case light = "ececec"
        }
        enum green: String {
            case highest = "E8F2F2"
            case graynessMid = "C2D9D8"
        }
        enum yellow: String {
            case highest = "fecb2e"
        }

        enum dark: String {
            case black = "000000"
            case gray = "121212"
            case lightGray = "9B9B9B"
            case primary = "1F1B24"
            case systemGray = "9A9A9A"
        }
    }
    
    enum Fonts {
        enum names: String {
            case regular = "IRANSansMonoSpacedNum"
            case light = "IRANSansMonoSpacedNum-Light"
            case bold = "IRANSansMonoSpacedNum-Bold"
        }
        
        enum sizes: Int {
            
            case h1 = 27
            case h2 = 21
            case h3 = 20
            case h4 = 18
            case h5 = 16
            case h6 = 13
            case h7 = 11
        }
    }
}

