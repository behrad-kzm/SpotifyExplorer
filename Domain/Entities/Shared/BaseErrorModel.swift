//
//  BaseErrorModel.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public struct BaseErrorModel: Codable {
    public let error: DetailErrorModel
}

public struct DetailErrorModel: Codable {
    public let status: UInt
    public let message: String
}
