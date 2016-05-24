//
//  CSHTabbarVC.swift
//  CSHMall
//
//  Created by apple on 16/5/11.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class CSHTabbarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createChildViewControllers()
        self.setValue(MainTabBar(), forKey: "tabBar")
    }
    
    //MARK: - 创建子控制器
    private func createChildViewControllers() {
        let homeVC:CSHHomeVC = CSHHomeVC()
        let classifyVC:CSHClassify = CSHClassify()
        let shopCarVC:CSHShopCarVC = CSHShopCarVC()
        let acoountVC:CSHAcoountVC = CSHAcoountVC()
        //
        tabBaraAddChildViewController(vc: homeVC, title: "首页", imageName: "tabbar_icon_home_normal", selectedImageName: "tabbar_icon_home_selected")
        tabBaraAddChildViewController(vc: classifyVC, title: "分类", imageName: "tabbar_icon_classify_norma", selectedImageName: "tabbar_icon_classify_selected")
        tabBaraAddChildViewController(vc: shopCarVC, title: "购物车", imageName: "tabbar_icon_cart_norm", selectedImageName: "tabbar_icon_cart_selected")
        tabBaraAddChildViewController(vc: acoountVC, title: "我的", imageName: "tabbar_icon_person_normal", selectedImageName: "tabbar_icon_person_selected")
    }
    
    private func tabBaraAddChildViewController(vc vc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName)?.imageWithRenderingMode(.AlwaysOriginal))
        let nav = UINavigationController(rootViewController: vc)
        addChildViewController(nav)
    }
    

    override var selectedIndex: Int {
        didSet {
           
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class MainTabBar: UITabBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translucent = false
        self.backgroundImage = UIImage(named: "bar")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}

