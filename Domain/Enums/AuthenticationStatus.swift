//
//  AuthenticationStatus.swift
//  Domain
//
//  Created by Behrad Kazemi on 8/14/18.
//  Copyright © 2018 Behrad Kazemi. All rights reserved.
//

import Foundation

public enum AuthenticationStatus: Int {
  case notDetermined = -1
  case tokenExpired = -2
  case authorized = 1
}
