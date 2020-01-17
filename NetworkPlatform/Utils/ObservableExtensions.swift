//
//  ObservableExtensions.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 1/17/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import RxSwift

protocol OptionalType {
    associatedtype Wrapped
    var asOptional:  Wrapped? { get }
}

extension Optional: OptionalType {
    var asOptional: Wrapped? { return self }
}

extension Observable where Element: OptionalType {
    func unwrappedOptional() -> Observable<Element.Wrapped> {
        return self.filter { $0.asOptional != nil }.map { $0.asOptional! }
    }
}


