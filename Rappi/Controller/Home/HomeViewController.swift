//
//  ViewController.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

protocol HomeViewControllerInput : ControllerInput
{
    func displayApplicationList(applications:NSArray)
}

protocol HomeViewControllerOutput : ControllerOutput
{
    func fetchApplications()
}

class HomeViewController: RappiViewController<HomeView, HomePresenter, HomeInteractor, HomeRouter>, HomeViewControllerInput {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rootView.showIndicator = true
        self.title = NSLocalizedString("app_categories", comment: "")
        
        presenter.fetchApplications()
    }
    
    // MARK: HomeViewControllerInput
    
    func displayApplicationList(aplications: NSArray) {
        rootView.showIndicator = false

    }
    
}

