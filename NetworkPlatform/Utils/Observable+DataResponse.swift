//
//  Observable+DataResponse.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 11/17/19.
//  Copyright © 2019 Golrang. All rights reserved.
//

import Foundation
import RxSwift
import Domain

public extension Observable where Element: BaseResponseType {
    
    typealias ResponseType = Element.ResponseDataType
    func getResponse() -> Observable<ResponseType> {
        return self.flatMap { (obj) -> Observable<ResponseType> in
            return Observable<ResponseType>.create{ observer in
                if obj.success ?? false && obj.data != nil {
                    observer.on(.next(obj.data!))
                    observer.on(.completed)
                }
                let error: Error
                if obj.success == true {
                    error = NSError(domain: ErrorTypes.internalError.rawValue, code: 0, userInfo: ["message": obj.message ?? "Data is null"])
                    
                } else {
                    error = NSError(domain: ErrorTypes.externalError.rawValue, code: 1, userInfo: ["message": obj.message ?? "Empty"])
                }
                observer.on(.error(error))
                return Disposables.create()
            }
        }
    }
}


