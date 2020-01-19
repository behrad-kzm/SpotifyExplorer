//
//  Network.swift
//  NetworkPlatform
//
//  Created by Behrad Kazemi on 8/14/18.
//  Copyright © 2018 All rights reserved.
//

import Foundation
import Domain
import Alamofire
import RxAlamofire
import RxSwift

final class Network<T: Decodable> {
    
    private let endPoint: String
    private let scheduler: ConcurrentDispatchQueueScheduler
    private var tokenString: String {
        return "Bearer " + AuthorizationManager.shared.accessToken
    }
    private var sharedHeaders: Dictionary<String,String> {
        if AuthorizationManager.shared.accessToken.isEmpty {
            return [:]
        }
        return ["Authorization" : tokenString]
    }
    init(_ endPoint: String) {
        self.endPoint = endPoint
        self.scheduler = ConcurrentDispatchQueueScheduler(qos: DispatchQoS(qosClass: DispatchQoS.QoSClass.background, relativePriority: 1))
    }
    func getItem(_ path: String, itemId: String = "", query: [String: Any] = [:], contentType: NetworkContentTypes = .json) -> Observable<T> {
        
        var absolutePath = itemId == "" ? endPoint + path : endPoint + "\(path)/\(itemId)"
        if !query.isEmpty {
            absolutePath +=  "?" + query.queryString
        }
        
        let responseObservable = RxAlamofire
            .request(.get, absolutePath, headers: sharedHeaders)
            .debug()
            .observeOn(scheduler)
            .responseData()
        
        let safeManager = AuthorizationManager.shared
        
        let tokenExpirationObservable = responseObservable.filter{ $0.0.statusCode == 401 }.flatMapLatest { [unowned safeManager, unowned self] (response, data) -> Observable<(HTTPURLResponse, Data)> in
            return safeManager.refreshAccessToken().concatMap { [unowned self](token) -> Observable<(HTTPURLResponse, Data)> in
                return RxAlamofire
                    .request(.get, absolutePath, headers: self.sharedHeaders)
                    .debug()
                    .observeOn(self.scheduler)
                    .responseData()
            }
        }
        
        let result = Observable.merge(responseObservable.filter{ $0.0.statusCode != 401 }, tokenExpirationObservable)
        return result.map({ [unowned self] (json) -> T in
            ResponseAnalytics.printResponseData(status: json.0.statusCode, responseData: json.1)
            if 200 ... 299 ~= json.0.statusCode{
                do{
                    let data = json.1
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .formatted(Formatter.iso8601)
                    return try decoder.decode(T.self, from: data)
                } catch let err {
                    print(String(bytes: json.1, encoding: .utf8) ?? "")
                    throw self.handle(error: err, data: json.1, StatusCode: json.0.statusCode)
                }
            }
            throw self.handle(data: json.1, StatusCode: json.0.statusCode)
        })
    }
    
    func handle(error: Error, data: Data, StatusCode code: Int) -> NSError {
        ResponseAnalytics.printError(status: code, error: error)
        do {
            let responseError = try JSONDecoder().decode(BaseErrorModel.self, from: data)
            return NSError(domain: "Network", code: code, userInfo: ["responseError": responseError])
        }catch {
            return NSError(domain: ErrorTypes.internalError.rawValue, code: code, userInfo: ["data" : data])
        }
    }
    
    func handle(data: Data, StatusCode code: Int) -> NSError {
        do {
            let responseError = try JSONDecoder().decode(BaseErrorModel.self, from: data)
            return NSError(domain: ErrorTypes.externalError.rawValue, code: code, userInfo: ["responseError": responseError])
        }catch{
            return NSError(domain: ErrorTypes.internalError.rawValue, code: code, userInfo: ["data" : data])
        }
    }
}
