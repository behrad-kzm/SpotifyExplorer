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
    
    func getItems(_ path: String, itemId: String = "", contentType: NetworkContentTypes = .json) -> Observable<[T]> {
        let absolutePath = itemId == "" ? endPoint + path : endPoint + "\(path)/\(itemId)"
        var requestHeader = sharedHeaders
        requestHeader["Content-Type"] = contentType.rawValue
        return RxAlamofire
            .request(.get, absolutePath, headers: requestHeader)
            .debug()
            .observeOn(scheduler)
            .responseData()
            .map({ [unowned self] (json) -> [T] in
                ResponseAnalytics.printResponseData(status: json.0.statusCode, responseData: json.1)
                if 200 ... 299 ~= json.0.statusCode{
                    do{
                        return try JSONDecoder().decode([T].self, from: json.1)
                    } catch {
                        throw self.handle(error: error, data: json.1, StatusCode: json.0.statusCode)
                    }
                }else if 401 == json.0.statusCode {
                    print("TOKEN EXPIRED")
                    AuthorizationManager.shared.tokenExpirationHandler(response: json.0)
                }
                throw self.handle(data: json.1, StatusCode: json.0.statusCode)
            })
    }
    
    func getItem(_ path: String, itemId: String = "", contentType: NetworkContentTypes = .json) -> Observable<T> {
        let absolutePath = itemId == "" ? endPoint + path : endPoint + "\(path)/\(itemId)"
        var requestHeader = sharedHeaders
        requestHeader["Content-Type"] = contentType.rawValue
        return RxAlamofire
            .request(.get, absolutePath, headers: requestHeader)
            .debug()
            .observeOn(scheduler)
            .responseData()
            .map({ [unowned self] (json) -> T in
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
                }else if 401 == json.0.statusCode {
                    print("TOKEN EXPIRED")
                    AuthorizationManager.shared.tokenExpirationHandler(response: json.0)
                }
                throw self.handle(data: json.1, StatusCode: json.0.statusCode)
            })
            
    }
    func postItem(_ path: String, parameters: [String: Any], contentType: NetworkContentTypes = .json) -> Observable<T> {
        let absolutePath = endPoint + path
        print("POST: \non: \(absolutePath)\nparameters: \(parameters)")
        var requestHeader = sharedHeaders
        requestHeader["Content-Type"] = contentType.rawValue
        
        return RxAlamofire
            .request(.post, absolutePath, parameters: parameters, encoding: JSONEncoding.default, headers: requestHeader)
            .debug()
            .observeOn(scheduler)
            .responseData()
            .map({ [unowned self] (json) -> T in
                ResponseAnalytics.printResponseData(status: json.0.statusCode, responseData: json.1)
                if 200 ... 299 ~= json.0.statusCode {
                    do{
                        return try JSONDecoder().decode(T.self, from: json.1)
                    } catch {
                        throw self.handle(error: error, data: json.1, StatusCode: json.0.statusCode)
                    }
                }else if 401 == json.0.statusCode {
                    print("TOKEN EXPIRED")
                    AuthorizationManager.shared.tokenExpirationHandler(response: json.0)
                }
                throw self.handle(data: json.1, StatusCode: json.0.statusCode)
            })
    }
    
    
    func handle(error: Error, data: Data, StatusCode code: Int) -> NSError {
			ResponseAnalytics.printError(status: code, error: error)
        return NSError() //[TODO]
//        do {
//            let responseError = try JSONDecoder().decode(ResponseMessage.Base.self, from: data)
//
//            return NSError(domain: ErrorTypes.externalError.rawValue, code: code, userInfo: ["responseError": responseError])
//        }catch{
//            return NSError(domain: ErrorTypes.internalError.rawValue, code: code, userInfo: ["data" : data])
//        }
    }
    
	func handle(data: Data, StatusCode code: Int) -> NSError {
        return NSError() //[TODO]
//		do {
//			let responseError = try JSONDecoder().decode(ResponseMessage.Base.self, from: data)
//
//			return NSError(domain: ErrorTypes.externalError.rawValue, code: code, userInfo: ["responseError": responseError])
//		}catch{
//			return NSError(domain: ErrorTypes.internalError.rawValue, code: code, userInfo: ["data" : data])
//		}
	}
}
