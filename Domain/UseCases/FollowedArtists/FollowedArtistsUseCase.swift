//
//  FollowedArtistsUseCase.swift
//  Domain
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import RxSwift

public protocol FollowedArtistsUseCase {
    func load(requestParameters: FollowedArtistsNetworkModel.Request) -> Observable<FollowedArtistsNetworkModel.Response>
}

