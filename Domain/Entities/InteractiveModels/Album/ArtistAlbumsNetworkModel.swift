//
//  ArtistAlbumsNetworkModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public enum ArtistAlbumsNetworkModel: InteractiveModelType {
    
    public struct Response: Codable, Equatable {
        public let href: String
        public let items: [AlbumsInfoItemModel]
        public let limit: UInt
        public let next: String?
        public let offset: UInt
        public let previous: String?
        public let total: UInt
        public static func == (lhs: Response, rhs: Response) -> Bool {
            return lhs.href == rhs.href && lhs.limit == rhs.limit && lhs.next == rhs.next && lhs.previous == rhs.previous
        }
    }
    
    public struct Request: Codable, Equatable {
        
        let include_groups: String
        let limit: UInt
        let market: String
        let offset: String
        public init (limit: UInt, includeGroups: [AlbumIncludeGroupType], market: String = "US", offset: String = "") {
            self.limit = limit
            let mixedGroups = includeGroups.reduce("", { (previous, item) -> String in
            return previous + "," + item.rawValue
            }).dropFirst()
            self.include_groups = String(mixedGroups)
            self.market = market
            self.offset = offset
        }
        public static func == (lhs: Request, rhs: Request) -> Bool {
            return lhs.market == rhs.market && lhs.offset == rhs.offset && lhs.include_groups == rhs.include_groups && lhs.limit == rhs.limit
        }
    }
}

