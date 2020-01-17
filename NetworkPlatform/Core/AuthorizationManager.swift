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
    
    public static let shared: AuthorizationManager = {
        let auth = AuthorizationManager()
        if let retrievedToken = UserDefaults.standard.string(forKey: Constants.Keys.Authentication.accessToken.rawValue), retrievedToken != ""{
            auth.status = .authorized
            auth.accessToken = retrievedToken
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
    
    public func tokenExpirationHandler(response: HTTPURLResponse) {
         _ = getNewToken()
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
    
    public func getNewToken() -> Observable<Bool>{
        
        SpotifyLogin.shared.getAccessToken { [unowned self](token, error) in
            if let safeToken = token {
                self.update(token: safeToken)
            }
        }
        return statusSubject.skip(1).map{ $0 == .authorized ? true : false}
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
            //            [TODO] handle authorize if fails
        }
        if result == false {
            let error = NSError(domain: "SpotifySDK", code: 400, userInfo: ["message": "authorization was not successful"]) as Error
            throw error
        }
    }
    
    
}
