//
//  Error+PopUpCover.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 12/9/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import UIKit
import Domain
extension Error {
    func asPopUpCoverViewModel(appearance: AppearanceProvider) -> PopUpCoverViewModel{
        let error = self as NSError
        
        let descriptionText: String
        switch error.code {
        case -1004:
            descriptionText = NSLocalizedString("ConnectionProblem", comment: "")
        case 403:
            descriptionText = NSLocalizedString("Forbidden", comment: "")
        default:
            descriptionText = error.userInfo["message"] as? String ?? NSLocalizedString("UnknownError", comment: "")
        }
        let color = UIColor.systemOrange
        return PopUpCoverViewModel(image: UIImage(named: "Warning")!, title: NSLocalizedString("AnErrorOccured", comment: "") , description: descriptionText, imageColor: color, appearance: appearance)
    }
}
