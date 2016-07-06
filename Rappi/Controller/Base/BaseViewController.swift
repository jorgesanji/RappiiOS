//
//  BaseViewController.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if isIpad(){
            return [UIInterfaceOrientationMask.LandscapeLeft,UIInterfaceOrientationMask.LandscapeRight];
        }
        
        return [UIInterfaceOrientationMask.Portrait]

    } 
}
