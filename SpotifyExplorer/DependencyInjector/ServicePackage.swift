//
//  ServicePackageProvider.swift
//  OKala
//
//  Created by Behrad Kazemi on 11/19/19.
//  Copyright © 2019 Golrang. All rights reserved.
//

import Foundation
import Domain


final class ServicePackage {
    
    public let networkServices: NetworkUseCaseProvider

    public init(networkServices: NetworkUseCaseProvider){
        self.networkServices = networkServices

    }
}
