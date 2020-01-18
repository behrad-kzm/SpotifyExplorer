//
//  ArtistsAlbumUseCase.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import RxSwift
import Domain
public final class ArtistsAlbumUseCase: Domain.ArtistsAlbumUseCase  {
    let network: ArtistsAlbumAPI
    init(network: ArtistsAlbumAPI) {
        self.network = network
    }
    public func load(requestParameters: ArtistAlbumsNetworkModel.Request) -> Observable<ArtistAlbumsNetworkModel.Response> {
        return network.load(requestParameter: requestParameters).share(replay: 1, scope: .forever)
    }
}

