//
//  NetworkContentType+Encoding.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 12/17/19.
//  Copyright © 2019 Golrang. All rights reserved.
//
import Alamofire
import Foundation
import Domain
extension NetworkContentTypes {
    func asParameterEncoding() -> ParameterEncoding{
        switch self {
        case .raw:
            return URLEncoding()
        default:
            return JSONEncoding.default
        }
    }
}
