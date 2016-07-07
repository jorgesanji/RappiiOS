//
//  AppDelegate+Window.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

extension AppDelegate{
    
    func gotoHome(){
        let viewController = HomeViewController()
        self.navigationController = UINavigationController()
        navigationController!.pushViewController(viewController, animated: false)
        UIView.transitionFromView((self.window?.rootViewController as! SplashViewController).rootView, toView:viewController.rootView , duration: 0.65, options: .TransitionCrossDissolve) { (Bool) -> Void in
            self.window?.rootViewController = self.navigationController
        }
    }
    
    func gotoSplash(){
        let viewController = SplashViewController()
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.rootViewController = viewController
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
    }
    
}