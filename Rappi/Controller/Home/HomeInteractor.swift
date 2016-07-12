//
//  HomeInteractor.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/8/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

protocol HomeInteractorInput: class, InteractorInput
{
    func fetchApplications()
}

protocol HomeInteractorOutput: class, InteractorOutput
{
    func applicationsFetched(response: NSArray)
}

class HomeInteractor: Interactor, HomeInteractorInput
{
    // MARK: Business logic
    
    func fetchApplications()
    {
        RappiUseCases.getApplications({ (result) -> Void in
            
            print("")
            
            self.getInteractor().applicationsFetched([])
            
            }) { (error) -> Void in
                print("")
        }
    }

}
