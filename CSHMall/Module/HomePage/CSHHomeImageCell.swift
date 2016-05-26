//
//  CSHHomeImageCell.swift
//  CSHMall
//
//  Created by csh on 16/5/26.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class CSHHomeImageCell: UICollectionViewCell {
    private var imageView:UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView = UIImageView(frame: CGRectMake(0, 0, ScreenWidth, frame.size.height-5))
        imageView!.image = UIImage.init(named: "tabbar_icon_cart_selected")
        self.contentView .addSubview(imageView!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
