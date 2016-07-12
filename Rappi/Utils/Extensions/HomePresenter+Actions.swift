//
//  HomePresenter+Actions.swift
//  Rappi
//
//  Created by jorge Sanmartin on 12/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation

extension HomePresenter{

    // MARK: Properties GETTER
    
    func getView() -> HomeViewControllerInput{
        return self.view as! HomeViewControllerInput
    }
    
    func getInteractor() -> HomeInteractorInput{
        return self.interactor as! HomeInteractorInput
    }
}