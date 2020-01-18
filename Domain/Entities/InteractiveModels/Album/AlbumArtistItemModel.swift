//
//  AlbumArtistItemModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation

public struct AlbumArtistItemModel: Codable {
    
   public  let href: String
   public  let id: String
   public  let name: String
   public  let type: String
   public  let uri: String
}
