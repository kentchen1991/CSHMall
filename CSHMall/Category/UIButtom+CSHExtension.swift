//
//  UIButtom+CSHExtension.swift
//  CSHMall
//
//  Created by apple on 16/5/10.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

extension UIButton {
    class ItemLeftButton: UIButton {
        override func layoutSubviews() {
            super.layoutSubviews()
            let Offset: CGFloat = 15
            titleLabel?.sizeToFit()
            titleLabel?.frame = CGRectMake(-Offset, height - 15, width - Offset, (titleLabel?.height)!)
            titleLabel?.textAlignment = .Center
            
            imageView?.frame = CGRectMake(-Offset, 0, width - Offset, height - 15)
            imageView?.contentMode = UIViewContentMode.Center
        }
    }
}