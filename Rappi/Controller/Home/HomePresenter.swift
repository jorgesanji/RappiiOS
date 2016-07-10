//
//  HomePresenter.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/8/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

protocol HomePresenterInput: class
{
    func presentFetchedApplicattions(response:NSArray)
}

protocol HomePresenterOutput: class
{
    func displayFetchApplication(viewModel:NSArray)
}

class HomePresenter: Presenter, HomeViewControllerOutput, HomeInteractorOutput
{
    
    required init()
    {
        super.init()
    }
    

//    weak var view: HomeViewControllerInput!
//    var interactor: HomeInteractorInput!
    
    // MARK: HomeInteractorOutput

    func applicationsFetched(response: NSArray) {
        (view as! HomeViewControllerInput).displayApplicationList(response)
    }

    // MARK: HomeViewControllerOutput
    
    func fetchApplications() {
        (self.interactor as! HomeInteractorInput).fetchApplications();
    }
}