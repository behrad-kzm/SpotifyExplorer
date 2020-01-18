//
//  ArtistsAlbumAPI.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import Domain
import RxSwift

public final class ArtistsAlbumAPI {
    
    private let network: Network<ArtistAlbumsNetworkModel.Response>
    private let artist: ArtistModel
    init(network: Network<ArtistAlbumsNetworkModel.Response>, forArtist artist: ArtistModel) {
        self.network = network
        self.artist = artist
    }
    
    public func load(requestParameter: ArtistAlbumsNetworkModel.Request) -> Observable<ArtistAlbumsNetworkModel.Response> {
        var requestFixedParameters = requestParameter.dictionary!
        if let offset = requestFixedParameters["offset"] as? String, offset.isEmpty, let index = requestFixedParameters.index(forKey: "offset") {
            requestFixedParameters.remove(at: index)
        }
        
        let endpoint = Constants.EndPoints.artistsAlbum.rawValue + "/" + artist.id + "/albums"
        return network.getItem(endpoint, query: requestFixedParameters)
    }
}
