//
//  SplashView.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

typealias onAnimationFinished = () -> Void


class SplashView : RappiView {
    
    // MARK: Properties
    
    var titleSplash:String{
        get{
            return self.title.text!
        }
        set{
            self.title.text = newValue
        }
    }
    
    // MARK: Variables
    
    
    // MARK: Views
    
    private var title: UILabel!
    
    override func createSubViews(){
        self.title = UILabel.newAutoLayoutView()
    }
    
    override func addSubviews(){
        self.addSubview(title)
    }
    
    override func addStyles(){
        self.backgroundColor = AppStyles.primaryColorApp()
        title.textColor = UIColor.whiteColor()
        title.textAlignment = .Center;
        title.font = UIFont.systemFontOfSize(AppDimentions.SIZE_FONT_TITLE_NAME_APP)
    }
    
    override func addActions() {
        
    }
    
    // Mark: setup constraints
    
    override func setupConstraints(){
        title.autoCenterInSuperview()
    }
    
    override func changeConstraints(){
        
    }
    
    func animate(duration:NSTimeInterval, completion:onAnimationFinished){
        self.title.transform = CGAffineTransformMakeScale(0.0, 0.0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            self.backgroundColor = UIColor.whiteColor()
            self.title.textColor = AppStyles.primaryColorApp()
            }) { (Bool) -> Void in
                UIView.animateWithDuration(duration, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 3.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                    self.title.transform = CGAffineTransformMakeScale(1.0, 1.0);
                    }) { (Bool) -> Void in
                        completion()
                }
        }

    }
}