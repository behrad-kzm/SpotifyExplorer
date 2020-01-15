//
//  ErrorTypes.swift
//  Domain
//
//  Created by Behrad Kazemi on 8/29/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation

public enum InternalErrorCodes: Int {
  case jsonParsingError = -10024
}

public enum ErrorTypes: String{
  case internalError = "InternalError"
  case externalError = "ExternalError"
}


