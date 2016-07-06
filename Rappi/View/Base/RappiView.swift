//
//  RappiView.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

class RappiView: BaseView {
    
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
    
}