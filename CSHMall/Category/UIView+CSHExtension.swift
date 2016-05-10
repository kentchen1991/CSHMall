//
//  UIView+Extension.swift
//  CSHMall
//
//  Created by apple on 16/5/10.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

extension UIView {
    var x:CGFloat {
        get {
            return self.frame.origin.x;
        }
        set {
            self.frame = CGRectMake(x, self.y, self.width, self.height);
        }
    }
    
    var y : CGFloat {
        get {
           return self.frame.origin.y;
        }
        set {
            self.frame = CGRectMake(self.x, y, self.width, self.height);
        }
    }
    
    var width : CGFloat {
        get {
            return self.frame.size.width;
        }
        set {
            self.frame = CGRectMake(self.x, self.y, width, self.height);
        }
    }
    
    var height : CGFloat {
        get {
            return self.frame.size.height;
        }
        set {
            self.frame = CGRectMake(self.x, self.y, self.width, height);
        }
    }
    
    var left : CGFloat {
        return self.x;
    }
    
    var top : CGFloat {
        return self.y;
    }
    
    var right : CGFloat {
        return self.x + self.width;
    }
    
    var bottom : CGFloat {
        return self.y + self.height;
    }
    
    var size : CGSize {
        get {
            return self.frame.size;
        }
        set {
            self.frame = CGRectMake(self.x, self.y, self.size.width, self.size.height);
        }
    }
    
    var origin : CGPoint {
        get {
            return self.frame.origin;
        }
        set {
             self.frame = CGRectMake(origin.x, origin.y, self.width, self.height);
        }
    }
    
    var centerX :CGFloat {
        get {
            return self.center.x;
        }
        set {
            var center:CGPoint = self.center;
            center.x = centerX;
            self.center = center;
        }
    }
    
    var centerY: CGFloat {
        get {
            return self.center.y;
        }
        set {
            var center:CGPoint = self.center;
            center.y = centerY;
            self.center = center;
        }
    }
    
}
