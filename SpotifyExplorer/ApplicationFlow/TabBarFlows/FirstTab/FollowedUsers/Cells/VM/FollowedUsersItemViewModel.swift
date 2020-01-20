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
    let colors: ColorsPack
    
    init(model: ArtistModel, colors: ColorsPack) {
        self.artist = model
        self.colors = colors
        self.title = model.name
        let mixedGenres = model.genres.reduce("", { (previous, item) -> String in
            return "\(previous) - \(item)"
            }).dropFirst()
        self.genre = String(mixedGenres)
        if let safeURL = model.images.first?.url {
            self.profileImagePath = safeURL
            return
        }
        self.profileImagePath = Constants.Keys.useDefaults.rawValue
        
    }
}
