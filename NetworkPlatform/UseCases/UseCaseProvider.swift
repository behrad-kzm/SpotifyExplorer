//
//  UseCaseProvider.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 11/17/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import Domain

public final class UseCaseProvider: Domain.NetworkUseCaseProvider {

    private let networkProvider: NetworkProvider
    public init() {
        networkProvider = NetworkProvider()

    }
    public func getAuthorizationManager() -> Domain.AuthorizationManager {
        return AuthorizationManager.shared
    }
    public func getLoginUseCases() -> Domain.LoginUseCase {
        return LoginUseCase(handler: getAuthorizationManager())
    }
    public func getFollowedUsersUseCases() -> Domain.FollowedArtistsUseCase {
        return FollowedArtistsUseCase(network: networkProvider.makeFollowedUsersNetwork())
    }
    public func getArtistsAlbumUseCases(forArtist artist: ArtistModel) -> Domain.ArtistsAlbumUseCase {
        return ArtistsAlbumUseCase(network: networkProvider.makeArtistsAlbumNetwork(artist: artist))
    }
}
