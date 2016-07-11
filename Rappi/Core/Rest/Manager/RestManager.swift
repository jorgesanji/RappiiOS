//
//  RestManager.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import AFNetworking

typealias TypeResponse = (result:NSDictionary) -> Void
typealias ErrorResponse = (error:NSError) -> Void

enum RequestMethod {
    case POST
    case GET
}

class RestManager{
    
    /// Singleton instance
    private static let sharedInstance = RestManager()
    /// Request manager
    private var manager : AFHTTPSessionManager?
    
    // MARK:- Initializing methods
    
    /// Initializing request manager with authorization header and base url
    ///
    
    static func initWithBaseUrl(url:String){
        let manager = AFHTTPSessionManager(baseURL: NSURL(string: url))
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
    
    static func GET(endpoint:String, parameters:AnyObject?=nil, success:TypeResponse, failure:ErrorResponse ){
        RestManager.sharedInstance.requestWithUrl(endpoint, parameters: validateParams(parameters), method: RequestMethod.GET, success: success, failure: failure)
    }
    
    /// Request using POST METHOD.
    ///
    /// :param: endpoint URL
    /// :param: parameters parameters
    /// :param: success callback success
    /// :param: failure callback failure
    
    static func POST(endpoint:String, parameters:AnyObject?=nil, success:TypeResponse, failure:ErrorResponse ){
        RestManager.sharedInstance.requestWithUrl(endpoint, parameters:validateParams(parameters), method: RequestMethod.POST, success: success, failure: failure)
    }
    
    // MARK:- Private
    
    /// Launch a request using argument method
    ///
    /// :param: endpoint URL
    /// :param: parameters parameters
    /// :param: method post or get methods
    /// :param: success callback success
    /// :param: failure callback failure
    
    private func requestWithUrl(endpoint:String, parameters:AnyObject?=nil, method:RequestMethod, success:TypeResponse, failure:ErrorResponse ){
        
        if(method == RequestMethod.POST){
            self.manager?.POST(endpoint, parameters: parameters, progress: { (NSProgress) -> Void in
            
                }, success: { (task:NSURLSessionDataTask, responseObject:AnyObject?) -> Void in
                    success(result: responseObject as! NSDictionary)
                }, failure: { (task:NSURLSessionDataTask?, error:NSError) -> Void in
                    failure(error: error)
            })
        
        
        }else{
            self.manager?.GET(endpoint, parameters: parameters, progress: { (NSProgress) -> Void in
                
                }, success: { (task:NSURLSessionDataTask, responseObject:AnyObject?) -> Void in
                     success(result: responseObject as! NSDictionary)
                }, failure: { (task:NSURLSessionDataTask?, error:NSError) -> Void in
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
    
    static func getBaseUrl()-> String{
        return ((RestManager.sharedInstance.manager?.baseURL)?.host)!
    }
}
