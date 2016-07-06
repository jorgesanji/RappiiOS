//
//  SplashView.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

class SplashView : RappiView {
    
    // MARK: Public properties
    
    var title: UILabel!
    
    override func createSubViews(){
        self.title = UILabel()
    }
    
    override func addSubviews(){
        self.addSubview(title)
    }
    
    override func addStyles(){
        title.text = "Rappi"
        title.textColor = UIColor.blackColor()
        title.font = UIFont.systemFontOfSize(36)
    }
    
    override func setupConstraints(){
        self.title.autoSetDimensionsToSize(CGSize(width: 140.0,height: 40.0))
        self.title.autoCenterInSuperview()
    }
    
    override func changeConstraints(){
        
    }
}