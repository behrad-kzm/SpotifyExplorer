//
//  FollowedArtistsNetworkModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public enum FollowedArtistsNetworkModel: InteractiveModelType {
    
    public struct Response: Codable {
        let artists: ArtistsListResponseModel
    }
    
    public struct Request: Codable {
        let type = "artist"
        let limit: UInt
        let after: String
    }
    
    public struct ArtistsListResponseModel: Codable {
        let items: [ArtistModel]
        let next: String
        let total: UInt
        let cursors: CursorModel
        let limit: UInt
        let href: String
    }
}
