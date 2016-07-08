//
//  HomePresenter.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/8/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

protocol HomePresenterInput
{
    func presentFetchedApplicattions(response:NSArray)
}

protocol HomePresenterOutput: class
{
    func displayApplicationList(viewModel: )
}