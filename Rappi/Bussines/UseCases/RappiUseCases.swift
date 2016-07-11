//
//  RappiUseCases.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/11/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

class RappiUseCases {
    
    private static var URL_ITEMS:String = "us/rss/topfreeapplications/limit=20/json";
    
    static func getApplications(success:TypeResponse, failure:ErrorResponse){
        
        RappiServicess.getApplications(URL_ITEMS, success: { (result) -> Void in
            print("")
            }) { (error) -> Void in
                print("")
        }
    }
}