//
//  FollowedUsersItemViewModel.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import Domain
import UIKit
public struct FollowedUsersItemViewModel {
    let artist: ArtistModel
    let profileImagePath: String
    let title: String
    let genre: String
    
    init(model: ArtistModel) {
        self.artist = model
        self.title = model.name
        self.genre = model.genres.reduce("", { (previous, item) -> String in
            return "\(previous) - \(item)"
        })
        if let safeURL = model.images.first?.url {
            self.profileImagePath = safeURL
            return
        }
        self.profileImagePath = Constants.Keys.useDefaults.rawValue
        
    }
}
