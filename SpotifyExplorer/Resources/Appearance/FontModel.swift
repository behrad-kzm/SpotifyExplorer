//
//  FontModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 12/7/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
public struct FontModel {
    public let name: String
    public let size: Int
    public init (name: String, size: Int) {
        self.name = name
        self.size = size
    }
}
