//
//  NetworkUseCaseProvider.swift
//  Domain
//
//  Created by Behrad Kazemi on 8/15/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation

public protocol NetworkUseCaseProvider {
    
    //MARK: - Get Token + Login
    func getAuthorizationManager() -> AuthorizationManager
    func getLoginUseCases() -> LoginUseCase
    
    //MARK: - Get Features
    func getFollowedUsersUseCases() -> FollowedArtistsUseCase
    func getArtistsAlbumUseCases(forArtist artist: ArtistModel) -> ArtistsAlbumUseCase
}
