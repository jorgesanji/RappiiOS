//
//  Presenter.swift
//  Rappi
//
//  Created by jorge Sanmartin on 10/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

protocol PresenterInput: class
{
}

protocol PresenterOutput: class
{
}

class Presenter: NSObject{
    
    var view : AnyObject!
    var interactor :AnyObject!
    
    required override init(){
        super.init()
    }

}