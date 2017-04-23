//
//  UIColor+CheckerboardView.swift
//  Pods
//
//  Created by Patryk Gruszka on 23/04/2017.
//
//

import Foundation

extension UIColor {
    
    class var random: UIColor {
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
}
