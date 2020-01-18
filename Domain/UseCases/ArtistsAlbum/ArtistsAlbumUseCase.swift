//
//  ArtistsAlbumUseCase.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import RxSwift

public protocol ArtistsAlbumUseCase {
    func load(requestParameters: ArtistAlbumsNetworkModel.Request) -> Observable<ArtistAlbumsNetworkModel.Response>
}

