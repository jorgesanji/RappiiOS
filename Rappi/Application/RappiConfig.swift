//
//  RappiConfig.swift
//  Rappi
//
//  Created by jorge Sanmartin on 6/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

class RappiConfig: AppConfig {
    
    static func getBaseUrl() -> String{
            return get("dev")
    }
    
}