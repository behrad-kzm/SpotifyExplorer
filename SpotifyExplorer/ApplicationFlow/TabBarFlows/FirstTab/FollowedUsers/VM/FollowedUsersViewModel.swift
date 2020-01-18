//
//  FollowedUsersViewModel.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 1/18/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import Domain
import SpotifyLogin
final class FollowedUsersViewModel: ViewModelType {
    
    let navigator: FollowedUsersNavigator
    private let networkServices: FollowedArtistsUseCase
    let appearance: AppearanceProvider
    
    init(navigator: FollowedUsersNavigator, networkServices: FollowedArtistsUseCase, appearance: AppearanceProvider) {
        self.navigator = navigator
        self.networkServices = networkServices
        self.appearance = appearance
    }
    func loadMoreItems(request: FollowedArtistsNetworkModel.Request) -> Observable<[ArtistModel]> {
        return networkServices.load(requestParameters: request).map{$0.artists.items}
    }
    func transform(input: Input) -> Output {
        let errorTracker = ErrorTracker()
        let activityIndicator = ActivityIndicator()
        let request = FollowedArtistsNetworkModel.Request(limit: 3, after: "")
        let loadMore = loadMoreItems(request: request).map{ $0.compactMap{ FollowedUsersItemViewModel(model: $0)}}
        let fetching = activityIndicator.asDriver()
        let errors = errorTracker.asDriver()
        return Output(isFetching: fetching, newItems: loadMore, error: errors)
    }
}
extension FollowedUsersViewModel {
    struct Input {
        let selectedItem: Driver<IndexPath>
        
    }
    
    struct Output {
        let isFetching: Driver<Bool>
        let newItems: Observable<[FollowedUsersItemViewModel]>
        let error: Driver<Error>
    }
}
