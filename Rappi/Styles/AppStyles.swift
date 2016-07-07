//
//  AppColors.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

class AppStyles {
    
    static func applyGlobalStyle(){
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName : UIFont.systemFontOfSize(AppDimentions.SIZE_TITLE_NAVBAR), NSForegroundColorAttributeName : titleColor()]
        UINavigationBar.appearance().barTintColor = primaryColorApp()

    }
    
    static func primaryColorApp()-> UIColor{
        return UIColor(hexString:"#303F9F")
    }
    
    static func secondaryColorApp()-> UIColor{
        return UIColor(hexString:"#DDDDDD")
    }
    
    static func titleColor()-> UIColor{
        return UIColor.whiteColor()
    }
    
    static func backgroundIndicatorColor()-> UIColor{
        return UIColor(hexString:"#80E2E2E2")
    }

}