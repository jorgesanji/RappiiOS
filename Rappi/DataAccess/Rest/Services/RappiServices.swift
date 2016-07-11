//
//  RappiService.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/11/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

class RappiServicess {
    
    static func getApplications(endoint:String, success:TypeResponse, failure:ErrorResponse){
        RappiManager.GET(endoint, parameters: nil, success: { (result) -> Void in
            if result != NSNull(){
                success(result: result)
            }else{
                failure(error: NSError(domain: "Error server", code: 1001, userInfo: nil))
            }
            }, failure:failure)
    }
    
}