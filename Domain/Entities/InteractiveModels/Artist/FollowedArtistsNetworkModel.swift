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
        public let artists: ArtistsListResponseModel
    }
    
    public struct Request: Codable {

        let type = "artist"
        let limit: UInt
        let after: String
        
        public init (limit: UInt, after: String) {
            self.limit = limit
            self.after = after
        }
    }
    
    public struct ArtistsListResponseModel: Codable {
       public  let items: [ArtistModel]
       public  let next: String
       public  let total: UInt
       public  let cursors: CursorModel
       public  let limit: UInt
       public  let href: String
    }
}
