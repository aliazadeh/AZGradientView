//
//  AZVerticalGradientView.swift
//  AZGradientViewSample
//
//  Created by Ali on 8/28/17.
//  Copyright © 2017 Ali Azadeh. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable final class AZVerticalGradientView: AZGradientView {
    
    @IBInspectable var topColor: UIColor = UIColor.clear
    @IBInspectable var middleColor: UIColor = UIColor.clear
    @IBInspectable var bottomColor: UIColor = UIColor.clear
    
    override func draw(_ rect: CGRect) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = CGRect(x: CGFloat(0),
                                y: CGFloat(0),
                                width: self.frame.size.width,
                                height: self.frame.size.height)
        gradient.colors = [topColor.cgColor, middleColor.cgColor, bottomColor.cgColor]
        layer.addSublayer(gradient)
    }
    
}
