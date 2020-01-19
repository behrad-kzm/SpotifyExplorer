//
//  Authenticator.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 1/16/20.
//  Copyright © 2020 BEKAppsDrafts. All rights reserved.
//

import Foundation
import Domain
import RxSwift
import SpotifyLogin

public class AuthorizationManager: Domain.AuthorizationManager {
    
    public private(set) var status = AuthenticationStatus.notDetermined 
    private var statusSubject = BehaviorSubject<AuthenticationStatus>.init(value: .notDetermined)
    private let clientID = "249534df82014ae4a07a49958dcd5948"
    private let secret = "3ec1d685136c4fad9c2b4f0675df8c79"
    
    public static let shared: AuthorizationManager = {
        let auth = AuthorizationManager()
        let redirectURL = URL(string: "spotifyexplorer://")!
        SpotifyLogin.shared.configure(clientID: auth.clientID, clientSecret: auth.secret, redirectURL: redirectURL)
        
        if let retrievedToken = UserDefaults.standard.string(forKey: Constants.Keys.Authentication.accessToken.rawValue), !retrievedToken.isEmpty{
            auth.status = .authorized
            auth.accessToken = retrievedToken
            auth.getNewToken()
            return auth
        }
        auth.accessToken = String()        
        return auth
    }()
    
    public private(set) var accessToken: String! {
        didSet {
            UserDefaults.standard.set(accessToken, forKey: Constants.Keys.Authentication.accessToken.rawValue)
        }
    }
    
    public func update(token: String) {
        accessToken = token
        status = .authorized
        statusSubject.onNext(status)
        
        print("Token: \n \'Bearer \(accessToken ?? "null")\'")
    }
    
    public func logOut(completion: @escaping ()->()) {
        accessToken = ""
        status = .notDetermined
        SpotifyLogin.shared.logout()
        statusSubject.onNext(status)
        completion()
    }
    
    private func getNewToken(){
        SpotifyLogin.shared.getAccessToken { [unowned self](token, error) in
            if let safeToken = token {
                self.update(token: safeToken)
            }
        }
    }
    
    public func refreshAccessToken() -> Observable<String> {
        return Observable.create { observer in
            SpotifyLogin.shared.getAccessToken { (token, error) in
                if let safeError = error {
                    observer.onError(safeError)
                    observer.onCompleted()
                    return
                }
                if let safeToken = token, !safeToken.isEmpty {
                    observer.onNext(safeToken)
                    observer.onCompleted()
                    return
                }
                let error = NSError(domain: ErrorTypes.internalError.rawValue, code: 400, userInfo: ["message" : "SpotifyLogin - Token completion has an unexpectable error!"])
                observer.onError(error)
                observer.onCompleted()
            }
            return Disposables.create()
        }.do(onNext: { [unowned self, statusSubject](token) in
            self.accessToken = token
            self.status = .authorized
            statusSubject.onNext(self.status)
        })
    }
    
    public func getStatusAsObservable() -> Observable<AuthenticationStatus> {
        statusSubject.asObservable()
    }
    
    public func proxy() -> AppProxyProtocol {
        return self
    }
}

extension AuthorizationManager: Domain.AppProxyProtocol {
    public func authorize(withURL url: URL) throws {
        
        let result = SpotifyLogin.shared.applicationOpenURL(url) { (error) in
            
        }
        if !result {
            let error = NSError(domain: "SpotifySDK", code: 400, userInfo: ["message": "authorization was not successful"]) as Error
            throw error
        }
        _ = getNewToken()
    }
}

