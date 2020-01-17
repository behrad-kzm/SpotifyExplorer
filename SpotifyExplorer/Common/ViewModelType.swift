//
//  ViewModelType.swift
//  BarandehShow
//
//  Created by M.Kolahi on 3/5/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}
