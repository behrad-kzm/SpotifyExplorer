//
//  TestFollowedArtists.swift
//  NetworkPlatformTests
//
//  Created by Behrad Kazemi on 1/19/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import XCTest
@testable import NetworkPlatform
@testable import Domain
import Nimble
import RxNimble
import RxBlocking

class TestFollowedArtists: XCTestCase {
    
    var followedArtistUseCase: Domain.FollowedArtistsUseCase!
    
    override func setUp() {
        super.setUp()
        self.followedArtistUseCase = NetworkPlatform.UseCaseProvider().getFollowedUsersUseCases()
        
        
    }
    
    override func tearDown() {
        followedArtistUseCase = nil
        super.tearDown()
    }
    
    func testLoadArtists() {
        let artistModelData = Data(JsonsMock.mockFollowedArtists.utf8)
        
        let expectedResponse = try! JSONDecoder().decode(FollowedArtistsNetworkModel.Response.self, from: artistModelData)
        let responseStream = self.followedArtistUseCase.load(requestParameters: FollowedArtistsNetworkModel.Request(limit: 15, after: ""))
        expect(responseStream).first(timeout: 30) == expectedResponse
    }
    }
