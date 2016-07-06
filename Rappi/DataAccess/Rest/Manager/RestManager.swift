//
//  RestManager.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

typealias TypeResponse = (result:AnyObject) -> Void
typealias ErrorResponse = (error:NSError) -> Void

enum RequestMethod {
    case POST
    case GET
}

class RestManager{
    
    /// Singleton instance
    private static let sharedInstance = RestManager()
    /// Request manager
    private var manager : AFHTTPRequestOperationManager?
    
    // MARK:- Initializing methods
    
    /// Initializing request manager with authorization header and base url
    ///
    
    static func initWithBaseUrl(url:NSString){
        let manager = AFHTTPRequestOperationManager(baseURL: NSURL(string: url as String))
        manager.responseSerializer = AFJSONResponseSerializer()
        RestManager.sharedInstance.manager = manager
    }
    
    /// Initializing request manager with authorization header and base url
    ///
    /// :param: user id user
    /// :param: password password user
    
    static func initWithBaseUrl(url:NSString, user:NSString, password:NSString){
        let manager = AFHTTPRequestOperationManager(baseURL: NSURL(string: url as String))
        manager.requestSerializer.setAuthorizationHeaderFieldWithUsername(user as String, password:password as String)
        manager.responseSerializer = AFJSONResponseSerializer()
        RestManager.sharedInstance.manager = manager
    }
    
    /// Initializing request manager with authorization header but withouth base url
    ///
    /// :param: user id user
    /// :param: password password user
    
    static func initWithAuthorizationCredentials(user:NSString, password:NSString){
        let manager = AFHTTPRequestOperationManager.new()
        manager.requestSerializer.setAuthorizationHeaderFieldWithUsername(user as String, password:password as String)
        manager.responseSerializer = AFJSONResponseSerializer()
        RestManager.sharedInstance.manager = manager
    }
    
    // MARK:- Public
    
    /// Request using GET METHOD.
    ///
    /// :param: endpoint URL
    /// :param: parameters parameters
    /// :param: success callback success
    /// :param: failure callback failure
    
    static func GET(endpoint:NSString, parameters:AnyObject?=nil, success:TypeResponse, failure:ErrorResponse ){
        RestManager.sharedInstance.requestWithUrl(endpoint, parameters: validateParams(parameters: parameters), method: RequestMethod.GET, success: success, failure: failure)
    }
    
    /// Request using POST METHOD.
    ///
    /// :param: endpoint URL
    /// :param: parameters parameters
    /// :param: success callback success
    /// :param: failure callback failure
    
    static func POST(endpoint:NSString, parameters:AnyObject?=nil, success:TypeResponse, failure:ErrorResponse ){
        RestManager.sharedInstance.requestWithUrl(endpoint, parameters:validateParams(parameters: parameters), method: RequestMethod.POST, success: success, failure: failure)
    }
    
    // MARK:- Private
    
    /// Launch a request using argument method
    ///
    /// :param: endpoint URL
    /// :param: parameters parameters
    /// :param: method post or get methods
    /// :param: success callback success
    /// :param: failure callback failure
    
    private func requestWithUrl(endpoint:NSString, parameters:AnyObject?=nil, method:RequestMethod, success:TypeResponse, failure:ErrorResponse ){
        
        if(method == RequestMethod.POST){
            self.manager?.POST(endpoint as String, parameters: parameters!, success: { (opration:AFHTTPRequestOperation,responseObject:AnyObject) -> Void in
                success(result: responseObject)
                }, failure: { (operation:AFHTTPRequestOperation ,error:NSError ) -> Void in
                    failure(error: error)
            })
        }else{
            self.manager?.GET(endpoint as String, parameters: parameters, success: { (opration:AFHTTPRequestOperation,responseObject:AnyObject) -> Void in
                success(result: responseObject)
                }, failure: { (operation:AFHTTPRequestOperation ,error:NSError ) -> Void in
                    failure(error: error)
            })
        }
    }
    
    static private func validateParams(parameters:AnyObject!=nil) -> NSDictionary{
        var params:NSDictionary!
        if (parameters == nil){
            params = NSDictionary()
        }else{
            params = parameters as! NSDictionary
        }
        return params
        
    }
}
