//
//  RandomColorExtension.swift
//  RandomColor
//
//  Created by Claudio Carnino on 22/10/2014.
//  Copyright (c) 2014 Tugulab. All rights reserved.
//

import Foundation
import UIKit



/**
*  All the methods are prefixed with RC (random color) to avoid clashing with other UIColor extensions that you might have added
*/
public extension UIColor {
    
    
    private class func RC_randomValueForColor() -> CGFloat {
        
        return CGFloat( CGFloat(arc4random()) % 256 / 255.0)
    }
    
    
    
    /**
    Random color
    
    :returns: Color
    */
    public class func RC_randomColor() -> UIColor {
        
        return UIColor(red: RC_randomValueForColor(), green: RC_randomValueForColor(), blue: RC_randomValueForColor(), alpha: 1.0)
    }
    
    
    
    /**
    Random tone of color
    
    :returns: Color
    */
    public class func RC_randomToneByColor(color: UIColor) -> UIColor {
        
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        
        color.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        
        return UIColor(hue: hue, saturation: RC_randomValueForColor(), brightness: RC_randomValueForColor(), alpha: alpha)
    }
    
    
    
    /**
    Random color using the golden ratio, so proper random colors
    Inspired by http://martin.ankerl.com/2009/12/09/how-to-create-random-colors-programmatically/
    
    :param: saturation Saturation percentage
    :param: brightness Brightness percentage
    
    :returns: UIColor
    */
    public class func RC_randomGoldenRatioColor(saturation: CGFloat = 0.5, brightness: CGFloat = 0.95) -> UIColor {

        let goldenRatioConjugate: CGFloat = 0.618033988749895
        var hue = RC_randomValueForColor()
        
        hue += goldenRatioConjugate
        hue %= 1
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
    }
    
}
