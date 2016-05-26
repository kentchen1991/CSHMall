//
//  CSHHomeVC.swift
//  CSHMall
//
//  Created by apple on 16/5/11.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class CSHHomeVC: UIViewController {
    private var collectionView:UICollectionView?
    private var adView:JOAdvertCarouselView?
    private var images:[String]?
    let header = MJRefreshNormalHeader()
    // 底部刷新
    let footer = MJRefreshAutoNormalFooter()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        buildCollectionView();
        buildTableHeadView()
        self.view.backgroundColor = common_background_color
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     // MARK: 私有 UI
    private func buildCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 8
        layout.sectionInset = UIEdgeInsets(top: 0, left: HomeCollectionViewCellMargin, bottom: 0, right: HomeCollectionViewCellMargin)
        layout.headerReferenceSize = CGSizeMake(0, HomeCollectionViewCellMargin)
        collectionView = UICollectionView(frame: CGRectMake(0, 0, ScreenWidth, ScreenHeight - 64), collectionViewLayout: layout);
        view.addSubview(collectionView!)
        collectionView!.delegate = self
        collectionView!.dataSource = self
        collectionView?.backgroundColor = common_background_color
        collectionView!.registerClass(CSHHomeCollectionCell.self, forCellWithReuseIdentifier: "CSHHomeCollectionCell")
        collectionView!.registerClass(CSHHomeImageCell.self, forCellWithReuseIdentifier: "CSHHomeImageCell")
        collectionView!.registerClass(CSHCollectionItemsCell.self, forCellWithReuseIdentifier: "CSHCollectionItemsCell")
        collectionView!.mj_header = header
        collectionView?.mj_footer = footer
        header.setRefreshingTarget(self, refreshingAction: #selector(CSHHomeVC.refleashData))
        footer.setRefreshingTarget(self, refreshingAction: #selector(addMoreHotData))
    }
    
    func refleashData() {
        header.endRefreshing()
    }
    
    func addMoreHotData() {
//        footer.endRefreshing()
    }
    
    private func buildTableHeadView() {
        collectionView?.contentInset = UIEdgeInsetsMake(150, 0, 0, 0)
        adView = JOAdvertCarouselView(frame: CGRectMake(0, -150, ScreenWidth, 150))
        collectionView?.addSubview(adView!)
        adView!.delegate = self;
        images = ["http://c.hiphotos.baidu.com/zhidao/pic/item/71cf3bc79f3df8dc0bc3589bcb11728b4710283a.jpg",
                  "http://img1.dzwww.com:8080/tupian_pl/20150818/75/6824462976615371047.jpg",
                  "http://pic1.5442.com/2013/0518/04/05.jpg",
                  "http://img4q.duitang.com/uploads/item/201207/20/20120720190413_h5riQ.jpeg"]
        adView!.adverCount = (images!.count)
        adView!.startRun(time: 3.0)
    }
    
}

extension CSHHomeVC:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if  section == 0 {
            return 1
        } else if section == 1 {
            return 3
        } else {
            return 10
        }
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell : UICollectionViewCell?
        
        if indexPath.section == 0 {
             cell = collectionView.dequeueReusableCellWithReuseIdentifier("CSHCollectionItemsCell", forIndexPath: indexPath)
        }else if indexPath.section == 1 {
             cell = collectionView.dequeueReusableCellWithReuseIdentifier("CSHHomeImageCell", forIndexPath: indexPath)
        }else {
            cell = collectionView.dequeueReusableCellWithReuseIdentifier("CSHHomeCollectionCell", forIndexPath: indexPath)
        }
        return cell!;
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 3;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        var itemSize = CGSizeZero
        if indexPath.section == 0 {
            itemSize = CGSizeMake(ScreenWidth, 140)
        }else if indexPath.section == 1 {
            itemSize = CGSizeMake(ScreenWidth - HomeCollectionViewCellMargin * 2, 100)
        } else if indexPath.section == 2 {
            let w:CGFloat = (ScreenWidth - HomeCollectionViewCellMargin*3) / 2
            let h:CGFloat = w + 60
            itemSize = CGSizeMake(w, h)
        }
        return itemSize
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 0 {
            return CGSizeMake(ScreenWidth, HomeCollectionViewCellMargin)
        } else if section == 1 {
            return CGSizeMake(ScreenWidth, HomeCollectionViewCellMargin * 2)
        } else {
            return CGSizeMake(10, HomeCollectionViewCellMargin * 2)
        }
    }
    
}

extension CSHHomeVC : JOAdverCarouselProtocol {
    func advertCarouselView(adverView: JOAdvertCarouselView, mediaImageView imageView: UIImageView, cellIndex index: Int) {
       // imageView.contentMode = .ScaleAspectFit
//        print("\(images![index])");
        //Swift
        imageView.yy_setImageWithURL(NSURL(string: images![index]), options: [.SetImageWithFadeAnimation, .ProgressiveBlur])
        
    }
    func advertCarouselView(adverView: JOAdvertCarouselView, didSelectItemAtIndex index: Int) {
        UIAlertView(title: "\(index)", message: "想干嘛?", delegate: nil, cancelButtonTitle: "不想").show()
    }
}


