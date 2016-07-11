//
//  HomePresenter.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/8/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

protocol HomePresenterInput: class, PresenterInput
{
    func presentFetchedApplicattions(response:NSArray)
}

protocol HomePresenterOutput: class, PresenterOutput
{
    func displayFetchApplication(viewModel:NSArray)
}

class HomePresenter: Presenter, HomeViewControllerOutput, HomeInteractorOutput
{

    // MARK: HomeInteractorOutput
    
    func applicationsFetched(response: NSArray) {
        getView().displayApplicationList(response)
    }
    
    // MARK: HomeViewControllerOutput
    
    func fetchApplications() {
        getInteractor().fetchApplications()
    }
    
    // MARK: Properties GETTER
    
    func getView() -> HomeViewControllerInput{
        return self.view as! HomeViewControllerInput
    }
    
    func getInteractor() -> HomeInteractorInput{
        return self.interactor as! HomeInteractorInput
    }
}