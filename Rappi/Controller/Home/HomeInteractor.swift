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
    func fetchApplications(request:String)
}

protocol HomeInteractorOutput
{
    func presentFetchedApplicattions(response: NSArray)
}

class HomeInteractor: HomeInteractorInput
{
    var output: HomeInteractorOutput!
    
    // MARK: Business logic
    
    func fetchApplications(request: String)
    {
        
    }
}
