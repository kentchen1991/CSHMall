//
//  UIBarButtonItem+CSHExtension.swift
//  CSHMall
//
//  Created by apple on 16/5/10.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    class func createBarButton(title: String, titleColor: UIColor, image: UIImage, hightLightImage: UIImage?, target: AnyObject?, action: Selector) -> UIBarButtonItem {
        let btn:UIButton = UIButton(type: .Custom);
        btn.setTitle(title, forState: .Normal)
        btn.setImage(image, forState: .Normal)
        btn.setTitleColor(titleColor, forState: .Normal)
        btn.setImage(hightLightImage, forState: .Highlighted)
        btn.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        btn.frame = CGRectMake(0, 0, 60, 44)
        btn.sizeToFit();
        return UIBarButtonItem(customView: btn)
        
    }
    
    class func createBarButton(image: UIImage, target: AnyObject?, action: Selector) -> UIBarButtonItem {
        let btn = UIButton(type: .Custom)
        btn.setImage(image, forState: UIControlState.Normal)
        btn.imageView?.contentMode = UIViewContentMode.Center
        btn.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        btn.frame = CGRectMake(0, 0, 44, 44)
        return UIBarButtonItem(customView: btn)
    }
    class func createBarButton(title: String, titleColor: UIColor, target: AnyObject?, action: Selector) -> UIBarButtonItem {
        let btn = UIButton(frame: CGRectMake(0, 0, 60, 44))
        btn.setTitle(title, forState: .Normal)
        btn.setTitleColor(titleColor, forState: .Normal)
        btn.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        btn.titleLabel?.font = UIFont.systemFontOfSize(15)
        if title.characters.count == 2 {
            btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -25)
        }
        return UIBarButtonItem(customView: btn)
    }
    
}

