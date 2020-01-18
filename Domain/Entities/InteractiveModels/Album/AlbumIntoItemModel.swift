//
//  AlbumIntoItemModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public struct AlbumsInfoItemModel: Codable {
    public let album_group: String
    public let album_type: String
    public let artists: [AlbumArtistItemModel]
    public let images: [ImageModel]
    public let name: String
    public let release_date: String
    public let release_date_precision: String
    public let type: String
    public let uri: String
}
