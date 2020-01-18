//
//  UIView+RemoveSubviews.swift
//  BarandehShow
//
//  Created by Behrad Kazemi on 2/13/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit
extension UIView {
    public func removeSubviews(){
        self.subviews.forEach { (item) in
            item.removeFromSuperview()
        }
    }
}
extension CALayer {
    public func removeSublayers(){
        self.sublayers?.forEach({ (item) in
            item.removeFromSuperlayer()
        })
    }
}
