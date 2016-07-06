//
//  Application+RestManager.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

extension AppDelegate{
    
    func initRestService(){
        RestManager.initWithBaseUrl(RappiConfig.getBaseUrl())
    }
}