//
//  FollowedArtistsUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import RxSwift
import Domain
import SpotifyLogin
public final class FollowedArtistsUseCase: Domain.FollowedArtistsUseCase  {
    let network: FollowedArtistsAPI
    init(network: FollowedArtistsAPI) {
        self.network = network
    }
    public func load(requestParameters: FollowedArtistsNetworkModel.Request) -> Observable<FollowedArtistsNetworkModel.Response> {
        return network.load(requestParameter: requestParameters).share(replay: 1, scope: .forever)
    }
}

