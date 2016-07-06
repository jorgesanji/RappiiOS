//
//  AppConfig.swift
//  Rappi
//
//  Created by jorge Sanmartin on 6/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

let  appConfigResourceName = "AppConfig";
let  appConfigResourceType = "json";
let  configurationBundleKey = "Configuration";

class AppConfig{
    
    static let _config:NSDictionary;
    
    static func initialize()-> Void{
        let data = NSData.dataWithContentsOfMappedFile(AppConfig.appConfigPath());
        let json:NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options:kNilOptions, error:nil)
        _config = json;
    }
    
    static func appConfigPath()-> NSString{
        let path = NSBundle.mainBundle().pathForResource(appConfigResourceName, ofType: appConfigResourceType)
        if path == nil {
            NSException.raise(NSInternalInconsistencyException, format: "%@.%@ not found", appConfigResourceName, appConfigResourceType)
        }
        
        return path;
    }
    
    
    // MARK:- Initializing methods
    static func get(NSString:key)->AnyObject {
        return _config[key];
    }
}