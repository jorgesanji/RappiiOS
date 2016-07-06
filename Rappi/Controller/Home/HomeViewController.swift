//
//  ViewController.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    /// override root view
    var Oview: HomeView! { return self.view as! HomeView }
    
    // MARK:- Properties
    
    
    // MARK:- UIViewController
    
    override func loadView() {
        self.view = HomeView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Oview.showIndicator = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

