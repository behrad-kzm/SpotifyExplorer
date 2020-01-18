//
//  UIView+Shadow.swift
//  BarandehShow
//
//  Created by Behrad Kazemi on 2/19/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit
extension UIView {
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 5, shadowRadius: CGFloat = 5, scale: Bool = true) {

        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = shadowRadius
        
        layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: radius).cgPath
        layer.masksToBounds = false
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
