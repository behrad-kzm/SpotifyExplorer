//
//  ArtistModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public struct ArtistModel: Codable {
    
    let followers: FollowersModel
    let genres: [String]
    let href: String
    let id: String
    let images: [ImageModel]
    let name: String
    let popularity: UInt
    let type: String
    let uri: String
}
