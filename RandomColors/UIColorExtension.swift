//
//  UIColorExtension.swift
//  RandomColors
//
//  Created by Gustavo Nunes Pereira on 17/01/23.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor {

        return UIColor(
            red:   CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue:  CGFloat.random(in: 0...1),
            alpha: 1
        );
        
    }
}
