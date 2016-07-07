//
//  BaseViewController.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

class RappiViewController<V : BaseView>: UIViewController {

    // MARK:- UIViewController
    
    /// override root view
    var rootView: V! { return self.view as! V }
    
    override func loadView() {
        self.view = V()
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- UIViewController rotation
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if isIpad(){
            return [UIInterfaceOrientationMask.LandscapeLeft,UIInterfaceOrientationMask.LandscapeRight];
        }
        
        return [UIInterfaceOrientationMask.Portrait]
    }
    
    // MARK:- UIViewController status bar
    
    override func prefersStatusBarHidden() -> Bool {
        return false
    }
}
