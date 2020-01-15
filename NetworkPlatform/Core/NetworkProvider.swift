//
//  NetworkProvider.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 12/26/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//
import Domain

final class NetworkProvider {
	private var apiEndpoint: String {
		var endpoint = Constants.EndPoints.defaultBaseUrl.rawValue
        if let baseURL = UserDefaults.standard.string(forKey: Constants.EndPoints.defaultBaseUrl.rawValue), !baseURL.isEmpty {
            endpoint = baseURL
        }
		return endpoint
	}
	
	//MARK: - Login and Authorization
	public func makeAuthorizationNetwork() -> AuthenticationNetwork {
		let network = Network<BaseResponse<TokenModel.Response>>(apiEndpoint)
		return AuthenticationNetwork(network: network)
	}    
}
