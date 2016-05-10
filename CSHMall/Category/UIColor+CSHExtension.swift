//
//  UIColor+CSHExtension.swift
//  CSHMall
//
//  Created by apple on 16/5/10.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

extension UIColor {
    class func rgbColor(r: CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
       return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
    }
    
}