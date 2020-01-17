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
//import SpotifyLogin
//final class SpotifyProxy:NSObject, Domain.SpotifyAPIProxy {
//    
//    private let clientID = "ba05b9cd59634cefa8493ac961d76ed6"
//    private let secret = "80b7235a88264654a105a989f6775a59"
//    lazy var configuration = {
//        return SPTConfiguration(clientID: self.clientID, redirectURL: self.redirectURL)
//    }()
//    var accessToken: String {
//        SpotifyLogin.shared. ?? ""
//    }
//    private let redirectURL: URL
//    override init() {
//        self.redirectURL = URL(string: "spotifyExplorer://")!
//        SpotifyLogin.shared.configure(clientID: self.clientID, clientSecret: self.secret, redirectURL: self.redirectURL)
//    }
//    
//    func setDelegate(session: Domain.SessionManagerDelegate) {
//        sessionDelegate = session
//    }
//    
//    func promptSpotifyAccess() throws {
//        if sessionDelegate == nil {
//            let error = NSError(domain: "SpotifySDK", code: 504, userInfo: ["message": "Please specify a sesstionDelegate to prevent this error."]) as Error
//            throw error
//        }
//        let scope: SPTScope = [.appRemoteControl, .userFollowRead]
//        sessionManager?.initiateSession(with: scope, options: .clientOnly)
//    }
//    
//
//}
//
//extension SpotifyProxy: SPTAppRemoteDelegate {
//    func appRemoteDidEstablishConnection(_ appRemote: SPTAppRemote) {
//        appRemoteDelegate?.appRemoteDidEstablishConnection()
//    }
//
//    func appRemote(_ appRemote: SPTAppRemote, didDisconnectWithError error: Error?) {
//        appRemoteDelegate?.appRemote(didDisconnectWithError: error)
//    }
//
//    func appRemote(_ appRemote: SPTAppRemote, didFailConnectionAttemptWithError error: Error?) {
//        appRemoteDelegate?.appRemote(didFailConnectionAttemptWithError: error)
//    }
//}
//
//extension SpotifyProxy: SPTSessionManagerDelegate {
//    func sessionManager(manager: SPTSessionManager, didFailWith error: Error) {
//        sessionDelegate?.sessionManager(didFailWith: error)
//    }
//
//    func sessionManager(manager: SPTSessionManager, didRenew session: SPTSession) {
//        sessionDelegate?.sessionManagerDidRenew()
//    }
//
//    func sessionManager(manager: SPTSessionManager, didInitiate session: SPTSession) {
//        sessionDelegate?.sessionManagerDidInitiate()
//    }
//}
