//
//  FontModel+asUIFont.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 12/7/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import UIKit
import Domain
extension FontModel {
    func uiFont() -> UIFont {
        return UIFont(name: self.name, size: CGFloat(self.size)) ?? UIFont.systemFont(ofSize: CGFloat(self.size))
    }
}
