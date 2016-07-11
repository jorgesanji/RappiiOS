//
//  Interactor.swift
//  Rappi
//
//  Created by jorge Sanmartin on 10/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

protocol InteractorInput
{
}

protocol InteractorOutput
{
}

class Interactor : NSObject {
    
    // MARK: Instance Variables
    
    weak var output: AnyObject!
    
    required override init(){
        super.init()
    }
}