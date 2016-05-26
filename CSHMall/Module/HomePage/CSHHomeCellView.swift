//
//  CSHHomeCellView.swift
//  CSHMall
//
//  Created by csh on 16/5/26.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class CSHHomeCellView: UIView {
//    private var collectionView:UICollectionView?
    private lazy var collectionView:UICollectionView  = {
        let margin:CGFloat = 5
        let w:CGFloat = (ScreenWidth - (margin + 10) * 2) / 3
        let h:CGFloat = w + 70
        var layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing =  margin;
        layout.minimumLineSpacing = margin
        layout.scrollDirection = .Horizontal
        layout.itemSize = CGSizeMake(w, h)
        layout.sectionInset = UIEdgeInsetsMake(0, 5, 10, 10);
        var collectionView = UICollectionView.init(frame: CGRectMake(0, 0, ScreenWidth, self.frame.size.height), collectionViewLayout: layout)
        collectionView.delegate = self;
        collectionView.dataSource = self;
        return collectionView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        collectionView.backgroundColor = common_background_color
        collectionView .registerClass(CSHHomeCollectionCell.self, forCellWithReuseIdentifier: "itemcell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CSHHomeCellView :UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8;
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView .dequeueReusableCellWithReuseIdentifier("itemcell", forIndexPath: indexPath)
        return cell;
    }
}
