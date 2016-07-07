//
//  BaseView.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit
import PureLayout

class BaseView: UIView {

    /// Indicates already is setted constraints
    private var didSetupConstraints = false
    
    override func updateConstraints(){
        super.updateConstraints()
        if !self.didSetupConstraints{
            setupConstraints()
            self.didSetupConstraints = true
        }else{
            changeConstraints()
        }
    }
    
    override static func requiresConstraintBasedLayout() -> Bool{
        return true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init(coder aDecoder: NSCoder) {
        preconditionFailure("init(coder:) has not been implemented")
    }
    
    func initialize(){
        preconditionFailure("initialize has not been implemented")
    }
    
    func setupConstraints(){
        preconditionFailure("setupConstraints has not been implemented")
    }
    
    func changeConstraints(){
        preconditionFailure("changeConstraints has not been implemented")
    }
    
    private func commonInit(){
        self.didSetupConstraints = false
        initialize()
        updateConstraints()
    }

}
