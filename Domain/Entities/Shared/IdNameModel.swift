//
//  IdNameModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 9/29/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation
public struct IdNameModel: Codable {
  
  public init(name: String, id: Int){
    self.name = name
    self.id = id
  }
  public let name: String
  public let id: Int
}
