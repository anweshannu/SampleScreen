//
//  UiView+Extension.swift
//  Sample
//
//  Created by Anwesh M on 18/08/22.
//

import UIKit

extension UIView {
    
func setRadiusWithShadow(_ radius: CGFloat? = nil) { // this method adds shadow to right and bottom side of button
    self.layer.cornerRadius = radius ?? self.frame.width / 2
    self.layer.shadowColor = UIColor.darkGray.cgColor
    self.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
    self.layer.shadowRadius = 1.0
    self.layer.shadowOpacity = 0.7
    self.layer.masksToBounds = false
}

func setAllSideShadow(shadowShowSize: CGFloat = 1.0) { // this method adds shadow to allsides
    let shadowSize : CGFloat = shadowShowSize
    let shadowPath = UIBezierPath(rect: CGRect(x: -shadowSize / 2,
                                               y: -shadowSize / 2,
                                               width: self.frame.size.width + shadowSize,
                                               height: self.frame.size.height + shadowSize))
    self.layer.masksToBounds = false
    self.layer.shadowColor = UIColor.lightGray.withAlphaComponent(0.8).cgColor
    self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
    self.layer.shadowOpacity = 0.5
    self.layer.shadowPath = shadowPath.cgPath
}
}
