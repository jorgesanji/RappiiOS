//
//  BaseViewController.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/5/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

class RappiViewController <V : BaseView, P: Presenter, I : Interactor, R : Router>: BaseViewController {

    private var presenter: P!
    private var router: R!

    // MARK:- UIViewController init
    
    /// override root view
    var rootView: V! { return self.view as! V }
    
    override func loadView() {
        self.view = V()
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        configure();
    }
    
    // MARK:- UIViewController lifecycle
    
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
    
    // MARK:- Private methods

    private func configure()
    {
        self.router = R()
        self.presenter = P()
        let interactor = I()
        
        router.viewController = self

        presenter.view = self
        presenter.interactor = interactor
        
        interactor.output = presenter
    }
    
    // MARK:- Private methods
    
    internal func getRouter() -> R {
        return router
    }
    
    internal func getPresenter() -> P {
        return presenter
    }

}
