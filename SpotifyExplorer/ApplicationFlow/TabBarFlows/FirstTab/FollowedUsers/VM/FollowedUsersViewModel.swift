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
    let disposebag = DisposeBag()
    var itemViewModels = [FollowedUsersItemViewModel]()
    let requestStream = BehaviorSubject.init(value: FollowedArtistsNetworkModel.Request(limit: 15, after: ""))
    let itemViewModelsStream = BehaviorSubject.init(value: [FollowedUsersItemViewModel]())
    init(navigator: FollowedUsersNavigator, networkServices: FollowedArtistsUseCase, appearance: AppearanceProvider) {
        self.navigator = navigator
        self.networkServices = networkServices
        self.appearance = appearance
    }
    func loadMoreItems(request: FollowedArtistsNetworkModel.Request) -> Observable<[ArtistModel]> {
        return networkServices.load(requestParameters: request).do(onNext: { [requestStream](response) in
            if let after = response.artists.cursors.after {
                requestStream.onNext(FollowedArtistsNetworkModel.Request(limit: 15, after: after))
            }
        }).map{$0.artists.items}.share(replay: 1, scope: .forever)
    }
    func transform(input: Input) -> Output {
        let errorTracker = ErrorTracker()
        let activityIndicator = ActivityIndicator()
        
        let loadMore = input.bottomOffset.filter{ $0 == 0.0 }.startWith(0.0).withLatestFrom(requestStream).distinctUntilChanged().flatMapLatest { [unowned self](requestItem) -> Observable<[FollowedUsersItemViewModel]> in
            self.loadMoreItems(request: requestItem).map{ $0.compactMap{ FollowedUsersItemViewModel(model: $0, colors: self.appearance.getColors())}}
        }.do(onNext: {[unowned self, itemViewModelsStream](newItems) in
            self.itemViewModels.append(contentsOf: newItems)
            itemViewModelsStream.onNext(self.itemViewModels)
        }).trackError(errorTracker).trackActivity(activityIndicator)
        
        let fetching = activityIndicator.asDriver()
        let errors = errorTracker.asDriver().do(onNext: { [navigator](error) in
            navigator.prepareFor(error: error)
        })
        let selectionAction = Driver.combineLatest(input.selectedItem, itemViewModelsStream.asDriverOnErrorJustComplete()).map { (index, viewModels) -> FollowedUsersItemViewModel in
            viewModels[index.row]
        }.do(onNext: { [navigator](selectedViewModel) in
            navigator.toAlbums(forArtist: selectedViewModel.artist)
            }).mapToVoid()
        return Output(isFetching: fetching, sectionAction: selectionAction, newItems: loadMore, error: errors)
    }
}
extension FollowedUsersViewModel {
    struct Input {
        let selectedItem: Driver<IndexPath>
        let bottomOffset: Observable<CGFloat>
        
    }
    
    struct Output {
        let isFetching: Driver<Bool>
        let sectionAction: Driver<Void>
        let newItems: Observable<[FollowedUsersItemViewModel]>
        let error: Driver<Error>
    }
}
