//
//  FollowedArtistsAPI.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import Domain
import RxSwift

public final class FollowedArtistsAPI {
  
    private let network: Network<FollowedArtistsNetworkModel.Response>
  
  init(network: Network<FollowedArtistsNetworkModel.Response>) {
    self.network = network
  }
  
  public func load(requestParameter: FollowedArtistsNetworkModel.Request) -> Observable<FollowedArtistsNetworkModel.Response> {
    return network.postItem(Constants.EndPoints.followedArtists.rawValue, parameters: requestParameter.dictionary!)
  }
}
