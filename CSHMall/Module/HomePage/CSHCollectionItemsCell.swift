//
//  CSHCollectionItemsCell.swift
//  CSHMall
//
//  Created by csh on 16/5/26.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class CSHCollectionItemsCell: UICollectionViewCell {
    private var detailView:CSHHomeCellView?
    private var dataSource:[AnyObject]?
    override init(frame: CGRect) {
        super.init(frame: frame)
        detailView = CSHHomeCellView.init(frame: CGRectMake(0, 0, ScreenWidth, self.frame.size.height))
        self.contentView .addSubview(detailView!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

