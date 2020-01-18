//
//  AppProxyProtocol.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public protocol AppProxyProtocol {
    func authorize(withURL url: URL) throws
}
