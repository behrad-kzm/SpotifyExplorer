//
//  TestArtistsAlbum.swift
//  NetworkPlatformTests
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import XCTest
@testable import NetworkPlatform
@testable import Domain
import Nimble
import RxNimble
import RxBlocking

class TestArtistsAlbum: XCTestCase {
    
    var artistUseCase: Domain.ArtistsAlbumUseCase!
    
    override func setUp() {
        super.setUp()
        
        let artistModelData = Data(JsonsMock.artistModelMock.utf8)
        
        let artistModel = try! JSONDecoder().decode(ArtistModel.self, from: artistModelData)
        self.artistUseCase = NetworkPlatform.UseCaseProvider().getArtistsAlbumUseCases(forArtist: artistModel)
        
        
    }
    
    override func tearDown() {
        artistUseCase = nil
        super.tearDown()
    }
    
    func testLoadAlbums() {
        let expectedAlbumResultData = Data(JsonsMock.albumsModelMock.utf8)
        let expectedAlbumResult = try! JSONDecoder().decode(ArtistAlbumsNetworkModel.Response.self, from: expectedAlbumResultData)
        let artistsAPI = self.artistUseCase.load(requestParameters: ArtistAlbumsNetworkModel.Request(limit: 15, includeGroups: [.album]))
        expect(artistsAPI).first(timeout: 30) == expectedAlbumResult
    }
    
}
