//
//  AlbumItemViewModel.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import Domain
import UIKit
public struct AlbumItemViewModel {
    let model: AlbumsInfoItemModel
    let profileImagePath: String
    let title: String
    let artists: String
    
    init(model: AlbumsInfoItemModel) {
        self.model = model
        self.title = model.name
        let mixedArtists = model.artists.reduce("", { (previous, item) -> String in
            return "\(previous) - \(item.name)"
            }).dropFirst()
        self.artists = String(mixedArtists)
        if let safeURL = model.images.first?.url {
            self.profileImagePath = safeURL
            return
        }
        self.profileImagePath = Constants.Keys.useDefaults.rawValue
        
    }
}
