//
//  HomeInteractor.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/8/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

protocol HomeInteractorInput
{
    func fetchApplications()
}

protocol HomeInteractorOutput
{
    func applicationsFetched(response: NSArray)
}

class HomeInteractor: Interactor, HomeInteractorInput
{
    
    required init()
    {
        super.init()
    }
    
    // MARK: Business logic
    
    func fetchApplications()
    {
        
        (output as! HomeInteractorOutput).applicationsFetched([])
    
    }
}
