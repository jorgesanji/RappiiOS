//
//  AppConfig.swift
//  Rappi
//
//  Created by jorge Sanmartin on 6/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

let  appConfigResourceName:String = "AppConfig";
let  appConfigResourceType:String = "json";
let  configurationBundleKey:String = "Configuration";

class AppConfig{
    
    static var _config:NSDictionary = [String: AnyObject]();
    
    static func initialize()-> Void{
        let data = NSData.dataWithContentsOfMappedFile(AppConfig.appConfigPath() as String);
        do{
            let json:NSDictionary? = try NSJSONSerialization.JSONObjectWithData(data as! NSData, options:.AllowFragments) as? NSDictionary;
            _config = json!;
        }catch {
            NSException(name: NSInternalInconsistencyException, reason:"AppConfig imposible load from resources", userInfo:nil).raise()
        }
    }
    
    static func appConfigPath()-> NSString{
        let path = NSBundle.mainBundle().pathForResource(appConfigResourceName , ofType: appConfigResourceType )
        if path == nil {
            NSException(name: NSInternalInconsistencyException, reason:NSString(format:"%@.%@ not found",appConfigResourceName ,appConfigResourceType) as String, userInfo:nil).raise()
        }
        
        return path!;
    }
    
    
    // MARK:- Get object by key string
    private static func get(key:String)->AnyObject {
        return _config[key]!;
    }
    
    // MARK:- Public get methods

    static func getString(key:String)->String{
        return get(key) as! String;
    }
    
    static func getNumber(key:String)->NSNumber{
        return get(key) as! NSNumber;
    }
    
    static func getBoolean(key:String)->Bool{
        return get(key) as! Bool;
    }
}