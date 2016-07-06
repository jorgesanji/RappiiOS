//
//  ViewController+Device.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController{
    
    func isIpad()->Bool{
        return UIDevice.currentDevice().userInterfaceIdiom == .Pad
    }
}
