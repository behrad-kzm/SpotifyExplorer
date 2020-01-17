//
//  SpotifyProxy.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/16/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import Domain
/*
 [TODO]:
 this mask used to tarnsfer SpotifySDK to platform layer
 
 [WHY?]
 spotifySDK is Obj-c framework and needs bridging header.
 
 [HOW?]
 use dependency injection later...
*/

final class SpotifyProxy:NSObject, Domain.SpotifyAPIProxy {
    
    private let appRemote: SPTAppRemote
    private var sessionManager: SPTSessionManager?
    private let clientID = "ba05b9cd59634cefa8493ac961d76ed6"
    private let secret = "80b7235a88264654a105a989f6775a59"
    lazy var configuration = {
        return SPTConfiguration(clientID: self.clientID, redirectURL: self.redirectURL)
    }()
    private let redirectURL: URL
    var appRemoteDelegate: Domain.AppRemoteDelegate?
    var sessionDelegate: Domain.SessionManagerDelegate?
    override init() {
        self.redirectURL = URL(string: "spotifytest://")!
        let configuration = SPTConfiguration(clientID: self.clientID, redirectURL: self.redirectURL)
        self.appRemote = SPTAppRemote(configuration: configuration, logLevel: SPTAppRemoteLogLevel.debug)
        
    }
    
    func promptSpotifyAccess() throws {
        if sessionManager == nil {
            let error = NSError(domain: "SpotifySDK", code: 504, userInfo: ["Bad Request": "Please specify a sesstionDelegate to prevent this error."]) as Error
            throw error
        }
        let scope: SPTScope = [.appRemoteControl, .playlistReadPrivate]
        sessionManager?.initiateSession(with: scope, options: .clientOnly)
        
    }
    
    func authorize(withURL url: URL) throws {
        if let params = appRemote.authorizationParameters(from: url), let token: String = params[SPTAppRemoteAccessTokenKey] {
            appRemote.connectionParameters.accessToken = token
            return
        }
        let error = NSError(domain: "SpotifySDK", code: 504, userInfo: ["Bad Request": "Spotify parameters or access token is null."]) as Error
        throw error
    }
}

extension SpotifyProxy: SPTAppRemoteDelegate {
    func appRemoteDidEstablishConnection(_ appRemote: SPTAppRemote) {
        appRemoteDelegate?.appRemoteDidEstablishConnection()
    }

    func appRemote(_ appRemote: SPTAppRemote, didDisconnectWithError error: Error?) {
        appRemoteDelegate?.appRemote(didDisconnectWithError: error)
    }

    func appRemote(_ appRemote: SPTAppRemote, didFailConnectionAttemptWithError error: Error?) {
        appRemoteDelegate?.appRemote(didFailConnectionAttemptWithError: error)
    }
}

extension SpotifyProxy: SPTSessionManagerDelegate {
    func sessionManager(manager: SPTSessionManager, didFailWith error: Error) {
        sessionDelegate?.sessionManager(didFailWith: error)
    }

    func sessionManager(manager: SPTSessionManager, didRenew session: SPTSession) {
        sessionDelegate?.sessionManagerDidRenew()
    }

    func sessionManager(manager: SPTSessionManager, didInitiate session: SPTSession) {
        sessionDelegate?.sessionManagerDidInitiate()
    }
}
