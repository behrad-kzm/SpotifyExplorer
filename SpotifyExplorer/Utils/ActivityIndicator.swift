//
//  ActivityIndicator.swift
//  SpotifyExplorer
//
//  Created by Behrad Kazemi on 11/23/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa


public class ActivityIndicator: SharedSequenceConvertibleType {

  public typealias Element = Bool
  public typealias SharingStrategy = DriverSharingStrategy
  
  private let _lock = NSRecursiveLock()
    private let _variable = BehaviorRelay.init(value: false)
  private let _loading: SharedSequence<SharingStrategy, Bool>
  
  public init() {
    _loading = _variable.asDriver()
      .distinctUntilChanged()
  }
  
  fileprivate func trackActivityOfObservable<O: ObservableConvertibleType>(_ source: O) -> Observable<O.Element> {
    return source.asObservable()
      .do(onNext: { _ in
        self.sendStopLoading()
      }, onError: { _ in
        self.sendStopLoading()
      }, onCompleted: {
        self.sendStopLoading()
      }, onSubscribe: subscribed)
  }
  
  private func subscribed() {
    _lock.lock()
    _variable.accept(true)

    _lock.unlock()
  }
  
  private func sendStopLoading() {
    _lock.lock()
    _variable.accept(false)

    _lock.unlock()
  }
  
  public func asSharedSequence() -> SharedSequence<DriverSharingStrategy, ActivityIndicator.Element> {
    return _loading
  }
}

extension ObservableConvertibleType {
  public func trackActivity(_ activityIndicator: ActivityIndicator) -> Observable<Element> {
    return activityIndicator.trackActivityOfObservable(self)
  }
}
