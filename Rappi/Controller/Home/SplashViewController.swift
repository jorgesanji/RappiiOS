//
//  SplashViewController.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

class SplashViewController:BaseViewController{

    /// override root view
    var Oview: SplashView! { return self.view as! SplashView }
    
    // MARK:- Properties
    
    
    // MARK:- UIViewController
    
    override func loadView() {
        self.view = SplashView()
    }
    
    override func viewWillAppear(animated: Bool){
//        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
        UIApplication.sharedApplication().statusBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}