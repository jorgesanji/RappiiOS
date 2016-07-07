//
//  SplashViewController.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

class SplashViewController:RappiViewController<SplashView>{
    
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rootView.titleSplash = NSLocalizedString("app_name", comment: "")
        rootView.animate(0.5) { () -> Void in
            AppDelegate.Delegate().gotoHome()
        }
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}