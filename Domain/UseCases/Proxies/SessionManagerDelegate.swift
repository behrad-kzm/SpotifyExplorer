//
//  SessionManagerDelegate.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public protocol SessionManagerDelegate {
    func sessionManager(didFailWith error: Error)
    func sessionManagerDidRenew()
    func sessionManagerDidInitiate()
}
