//
//  ArtistAlbumsNetworkModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public enum ArtistAlbumsNetworkModel: InteractiveModelType {
    
    public struct Response: Codable {
        public let href: String
        public let items: [AlbumsInfoItemModel]
        public let limit: UInt
        public let next: String
        public let offset: UInt
        public let previous: String
        public let total: UInt
    }
    
    public struct Request: Codable, Equatable {
        
        let include_groups: String
        let limit: UInt
        let market: String
        public init (limit: UInt, include_groups: String, market: String = "US") {
            self.limit = limit
            self.include_groups = include_groups
            self.market = market
        }
        public static func == (lhs: Request, rhs: Request) -> Bool {
            return lhs.market == rhs.market && lhs.include_groups == rhs.include_groups && lhs.limit == rhs.limit
        }
    }
    
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
}

