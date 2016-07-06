//
//  AppDelegate+CoreData.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import MagicalRecord

let DATABASE_NAME = "RappiDataBase"

extension AppDelegate{
    
    func initDatabase(){
        MagicalRecord.setupCoreDataStackWithStoreNamed(DATABASE_NAME);
    }
}