//
//  AZHorizontalGradientView.swift
//  AZGradientViewSample
//
//  Created by Ali on 8/28/17.
//  Copyright © 2017 Ali Azadeh. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable final class AZHorizontalGradientView: AZGradientView {
    
    @IBInspectable var leftColor: UIColor = UIColor.clear
    @IBInspectable var rightColor: UIColor = UIColor.clear
    
    override func draw(_ rect: CGRect) {
        
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [leftColor.cgColor, rightColor.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        self.layer.addSublayer(gradient)


    }
    
}
