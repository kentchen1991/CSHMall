//
//  Theme.swift
//  CSHMall
//
//  Created by apple on 16/5/10.
//  Copyright © 2016年 apple. All rights reserved.
//

import Foundation
import UIKit

// MARK: - 全局常用属性
public let NavigationH: CGFloat = 64
public let ScreenWidth: CGFloat = UIScreen.mainScreen().bounds.size.width
public let ScreenHeight: CGFloat = UIScreen.mainScreen().bounds.size.height
public let ScreenBounds: CGRect = UIScreen.mainScreen().bounds
public let fTabH:CGFloat = 49.0
public let fTabW:CGFloat = ScreenWidth/4
//288, 58, 61
public let common_Color:UIColor =  UIColor(red: 288/255.0, green: 58/255.0, blue: 61/255.0, alpha: 1)

// MARK: - Home 属性
public let HotViewMargin: CGFloat = 10
public let HomeCollectionViewCellMargin: CGFloat = 10
public let HomeCollectionTextFont = UIFont.systemFontOfSize(14)
public let HomeCollectionCellAnimationDuration: NSTimeInterval = 1.0

//MARK: - 全局颜色
public let common_background_color = RGBA(244, g: 245, b:249 ,a: 1)
public let common_theme_color = RGBA(288, g: 58, b: 61 ,a: 1)
public let common_black_color = RGBA(33, g: 33, b: 33 ,a: 1)
public let common_gray_color = RGBA(248, g: 248, b: 248 ,a: 1)
public let common_bluegray_color = RGBA(244, g: 245, b: 249 ,a: 1)
public let common_lightgray_color = RGBA(215, g: 215, b: 215 ,a: 1)
public let common_midgray_color = RGBA(153, g: 153, b: 153 ,a: 1)

public func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) ->UIColor {
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}