//
//  TestViewController.swift
//  Rappi
//
//  Created by jorge Sanmartin on 14/7/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import Foundation
import UIKit

class TestViewController: UIViewController {
    
    /// override root view
    var rootView:TestView! { return self.view as! TestView }
    
    override func loadView() {
        self.view = TestView.fromNib()
    }
    
}