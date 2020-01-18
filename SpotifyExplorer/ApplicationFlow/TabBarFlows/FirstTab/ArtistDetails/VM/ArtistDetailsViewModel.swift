//
//  ArtistDetailsViewModel.swift
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
final class ArtistDetailsViewModel: ViewModelType {
    
    let navigator: ArtistDetailsNavigator
    private let networkServices: ArtistsAlbumUseCase
    let appearance: AppearanceProvider
    let requestStream = BehaviorSubject.init(value: ArtistAlbumsNetworkModel.Request(limit: 15, includeGroups: [.album]))
    
    init(navigator: ArtistDetailsNavigator, networkServices: ArtistsAlbumUseCase, appearance: AppearanceProvider) {
        self.navigator = navigator
        self.networkServices = networkServices
        self.appearance = appearance
    }
    
    func loadMoreItems(request: ArtistAlbumsNetworkModel.Request) -> Observable<[AlbumsInfoItemModel]> {
        return networkServices.load(requestParameters: request).do(onNext: { [requestStream](response) in
            if let offset = response.next?.components(separatedBy: "offset=").last?.components(separatedBy: "&limit").first {
                requestStream.onNext(ArtistAlbumsNetworkModel.Request(limit: 15, includeGroups: [.album], offset: offset))
            }
        }).map{ $0.items }
    }
    
    func transform(input: Input) -> Output {
        let errorTracker = ErrorTracker()
        let activityIndicator = ActivityIndicator()
        
        let loadMore = input.bottomOffset.filter{ $0 == 0.0 }.startWith(0.0).withLatestFrom(requestStream).distinctUntilChanged().flatMapLatest { [unowned self](requestItem) -> Observable<[AlbumItemViewModel]> in
            self.loadMoreItems(request: requestItem).map{ $0.compactMap{ AlbumItemViewModel(model: $0)}}
        }.trackError(errorTracker).trackActivity(activityIndicator)
        
        let fetching = activityIndicator.asDriver()
        let errors = errorTracker.asDriver().do(onNext: { [navigator](error) in
            navigator.prepareFor(error: error)
        })
        let close = input.closeTrigger.do(onNext: { [navigator]() in
            navigator.toHome()
        })
        let showEmpty = loadMore.take(1).map{$0.isEmpty}.asDriverOnErrorJustComplete()
        return Output(isFetching: fetching, closeAction: close, showEmpty: showEmpty, newItems: loadMore, error: errors)
    }
}

extension ArtistDetailsViewModel {
    struct Input {
        let bottomOffset: Observable<CGFloat>
        let closeTrigger: Driver<Void>
    }
    
    struct Output {
        let isFetching: Driver<Bool>
        let closeAction: Driver<Void>
        let showEmpty: Driver<Bool>
        let newItems: Observable<[AlbumItemViewModel]>
        let error: Driver<Error>
    }
}
