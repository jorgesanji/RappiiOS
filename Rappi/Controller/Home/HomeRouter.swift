//
//  HomeRouter.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/8/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

class HomeRouter: Router{
    
    func goToTestViewController(){
        let test = TestViewController()
        viewController.navigationController?.pushViewController(test, animated: true)
    }
}