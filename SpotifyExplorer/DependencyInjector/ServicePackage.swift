//
//  ServicePackageProvider.swift
//  OKala
//
//  Created by Behrad Kazemi on 11/19/19.
//  Copyright © 2019 BEKAppsDrafts. All rights reserved.
//

import Foundation
import Domain


final class ServicePackage {
    
    public let networkServices: NetworkUseCaseProvider
    public let appearance: AppearanceProvider
    public init(networkServices: NetworkUseCaseProvider, appearance: AppearanceProvider){
        self.networkServices = networkServices
        self.appearance: AppearanceProvider

    }
}
