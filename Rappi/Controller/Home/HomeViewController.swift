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
    func displayApplicationList(viewModel:NSArray)
}

protocol HomeViewControllerOutput
{
    func fetchApplications(request: String)
}

class HomeViewController: RappiViewController<HomeView> {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rootView.showIndicator = true
        self.title = NSLocalizedString("app_categories", comment: "")
    }
}

