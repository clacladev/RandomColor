//
//  RandomColorExtension.swift
//  RandomColor
//
//  Created by Claudio Carnino on 22/10/2014.
//  Copyright (c) 2014 Tugulab. All rights reserved.
//

import Foundation



extension UIColor {
    
    
    private class func randomValueForColor() -> CGFloat {
        
        return CGFloat( CGFloat(arc4random()) % 256 / 255.0)
    }
    
    
    
    /**
    Random color
    
    :returns: Color
    */
    public class func randomColor() -> UIColor {
        
        return UIColor(red: randomValueForColor(), green: randomValueForColor(), blue: randomValueForColor(), alpha: 1.0)
    }
    
    
    
    /**
    Random color
    
    :returns: Color
    */
    public class func randomToneByColor(color: UIColor) -> UIColor {
        
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        
        color.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        
        return UIColor(hue: hue, saturation: randomValueForColor(), brightness: randomValueForColor(), alpha: alpha)
    }
    
}
