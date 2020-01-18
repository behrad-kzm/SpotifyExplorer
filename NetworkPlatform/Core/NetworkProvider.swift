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
	
	public func makeFollowedUsersNetwork() -> FollowedArtistsAPI {
        let network =  Network<FollowedArtistsNetworkModel.Response>(apiEndpoint)
        return FollowedArtistsAPI(network: network)
	}
    
    public func makeArtistsAlbumNetwork(artist: ArtistModel) -> ArtistsAlbumAPI {
        let network =  Network<ArtistAlbumsNetworkModel.Response>(apiEndpoint)
        return ArtistsAlbumAPI(network: network, forArtist: artist)
    }
}
