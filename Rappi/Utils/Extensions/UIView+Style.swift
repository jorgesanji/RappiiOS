//
//  UIView+Style.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    ///
    /// Make round corners using view layer
    ///
    /// :param: radius: radius for round our view
    ///
    
    func roundCornersWithRadius(radius:CGFloat){
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    ///
    /// Put border in view
    ///
    /// :param: color: border color
    /// :param: border: border width
    
    func putBorderWithColor(color:UIColor, border:CGFloat){
        self.layer.borderWidth = border
        self.layer.borderColor = color.CGColor
        self.layer.masksToBounds = true
    }
    
    
}