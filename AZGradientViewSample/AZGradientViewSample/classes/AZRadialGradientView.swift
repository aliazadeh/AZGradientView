//
//  AZRadialGradientView.swift
//  AZGradientViewSample
//
//  Created by Ali on 10/8/17.
//  Copyright © 2017 Ali Azadeh. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class AZRadialGradientView: AZGradientView {
    
    @IBInspectable var internalColor: UIColor = UIColor.clear
    @IBInspectable var externalColor: UIColor = UIColor.clear
    
    override func draw(_ rect: CGRect) {
        let colors = [internalColor.cgColor, externalColor.cgColor] as CFArray
        let endRadius = max(frame.width, frame.height) / 2
        let center = CGPoint(x: bounds.size.width / 2, y: bounds.size.height / 2)
        guard
            let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: nil),
            let graphicsGetCurrentContext = UIGraphicsGetCurrentContext()
            else {
                return
        }
        graphicsGetCurrentContext.drawRadialGradient(gradient, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: endRadius, options: CGGradientDrawingOptions.drawsBeforeStartLocation)
    }
}
