//
//  CSHHomeCollectionCell.swift
//  CSHMall
//
//  Created by apple on 16/5/25.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class CSHHomeCollectionCell: UICollectionViewCell {
    private lazy var iconImgV:UIImageView = {
        let iconImgV = UIImageView();
        iconImgV.contentMode = UIViewContentMode.ScaleAspectFit
        return iconImgV;
    }()
    
    private lazy var titleLab:UILabel = {
        let lab = UILabel()
        lab.textAlignment = .Left
        lab.textColor = UIColor.blackColor()
        return lab
    }()
    
    private var priceLab:UILabel = {
        let priceLab = UILabel()
        return priceLab
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(iconImgV)
        addSubview(titleLab)
        addSubview(priceLab)
        self.contentView.backgroundColor = UIColor.blueColor()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
