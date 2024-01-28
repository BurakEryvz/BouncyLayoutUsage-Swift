//
//  Constants.swift
//  BouncyLayoutUsage
//
//  Created by Burak Eryavuz on 28.01.2024.
//

import Foundation
import UIKit

struct K {
    
    static func circleView(image: UIView) {
        image.layer.cornerRadius = (image.frame.size.width) / 2
        image.clipsToBounds = true
        image.layer.borderWidth = 3.0
        image.layer.borderColor = UIColor.white.cgColor
    }
    
    
    static func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
}
