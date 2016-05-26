//
//  CSHNetWorking.swift
//  CSHMall
//
//  Created by csh on 16/5/26.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

enum RequestMethodType {
    case GetMethod,PostMethod,UploadMethod
}

class CSHNetWorking: NSObject {
    var urlString:String?
    var method:RequestMethodType?
    var HTTPHeaderFieldsWithValues:Dictionary<String,String>?
    var delegate:NetworkingDelegate?
    var requestDictionary:Dictionary<String,String>?
    var tag:Int?
    var requestDictionarySerializer:RequestDictionarySerializer?
    var responseDataSerializer:ResponseDataSerializer?
    var timeoutInterval:Int?
    var originalResponseData:AnyObject?
    var serializerResponseData:AnyObject?
    
    func startRequest() {
        
    }
    
    func cancelRequest() {
        
    }
    
    class func getMethodNetworking(urlString:String,requestDictionary:Dictionary<String,String>) -> AnyObject {
        return NSNull();
    }
    
    class func postMethodNetworking(urlString:String,requestDictionary:Dictionary<String,String>) -> AnyObject {
        return NSNull();
    }
}

@objc protocol NetworkingDelegate:NSObjectProtocol {
    func requestSucess(networking:CSHNetWorking,data:AnyObject);
    func requestFailed(networking:CSHNetWorking,error:NSError);
}

@objc protocol RequestDictionarySerializer:NSObjectProtocol {
    func serializeRequestDictionary(requestDictionary:Dictionary<String,String>) -> Dictionary<String,String>;
}

@objc protocol ResponseDataSerializer:NSObjectProtocol {
    func serializeResponseData(data:AnyObject) -> AnyObject;
}





