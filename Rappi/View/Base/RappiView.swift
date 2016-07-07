//
//  RappiView.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

class RappiView: BaseView {
    
    static let KTagIndicator:NSInteger = 1000
    static let KTagViewIndicator:NSInteger = 2000
    
    /// Show or hide activity indicator
    var showIndicator:Bool{
        get{
            return self.showIndicator
        }
        set{
            if newValue{
                addIndicator()
            }else{
                self.viewWithTag(RappiView.KTagViewIndicator)?.removeFromSuperview()
            }
        }
    }
    
    override func setupConstraints(){
        
    }
    
    override func changeConstraints(){
        
    }
    
    override func initialize() {
        createSubViews()
        addSubviews()
        addStyles()
    }
    
    func createSubViews(){
        preconditionFailure("This method must be overridden")
    }
    
    func addSubviews(){
        preconditionFailure("This method must be overridden")
    }
    
    func addStyles(){
        preconditionFailure("This method must be overridden")
    }
    
    
    private func addIndicator(){
        if let indicatorView = self.viewWithTag(RappiView.KTagViewIndicator){
            indicatorView.hidden = false
            let indicator = self.viewWithTag(RappiView.KTagIndicator) as! UIActivityIndicatorView
            indicator.startAnimating()
        }else{
            let view = UIView.newAutoLayoutView()
            self.addSubview(view)
            view.autoSetDimensionsToSize(CGSize(width: 100.0, height: 100.0))
            view.autoCenterInSuperview()
            view.roundCornersWithRadius(6)
            view.tag = RappiView.KTagViewIndicator
            view.backgroundColor = AppStyles.backgroundIndicatorColor();
            
            let indicatorView = UIActivityIndicatorView(activityIndicatorStyle:.Gray)
            indicatorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(indicatorView)
            indicatorView.autoCenterInSuperview()
            indicatorView.color = AppStyles.primaryColorApp()
            indicatorView.hidesWhenStopped = true
            indicatorView.tag = RappiView.KTagIndicator
            indicatorView.startAnimating()
        }
    }
    
}