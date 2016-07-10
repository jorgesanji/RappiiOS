//
//  ViewController.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

protocol HomeViewControllerInput
{
    func displayApplicationList(applications:NSArray)
}

protocol HomeViewControllerOutput
{
    func fetchApplications()
}

class HomeViewController: RappiViewController<HomeView,HomePresenter, HomeInteractor, HomeRouter >, HomeViewControllerInput {
    
//    var presenter: HomeViewControllerOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rootView.showIndicator = true
        self.title = NSLocalizedString("app_categories", comment: "")
        
        presenter.fetchApplications()
    }
    
    
    func displayApplicationList(aplications: NSArray) {
                
    }
    
}

