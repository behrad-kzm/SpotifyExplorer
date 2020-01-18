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
    var requestFixedParameters = requestParameter.dictionary!
    if let after = requestFixedParameters["after"] as? String, after.isEmpty, let index = requestFixedParameters.index(forKey: "after") {
        requestFixedParameters.remove(at: index)
    }
    return network.getItem(Constants.EndPoints.followedArtists.rawValue, query: requestFixedParameters)
  }
}
