//
//  ArtistModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public struct ArtistModel: Codable {
    
   public  let followers: FollowersModel
   public  let genres: [String]
   public  let href: String
   public  let id: String
   public  let images: [ImageModel]
   public  let name: String
   public  let popularity: UInt
   public  let type: String
   public  let uri: String
}
