//
//  SpotifyAPIProxy.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
public protocol SpotifyAPIProxy {
    
    func promptSpotifyAccess() throws
    func authorize(withURL url: URL) throws
    var appRemoteDelegate: AppRemoteDelegate? { get set }
    var sessionDelegate: SessionManagerDelegate? {get set}
}
