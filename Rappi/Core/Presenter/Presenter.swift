//
//  Presenter.swift
//  Rappi
//
//  Created by jorge Sanmartin on 10/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

class Presenter : NSObject{
    
    weak var view: AnyObject!
    var interactor: AnyObject!
    
    required override init(){
        super.init()
    }
    
}