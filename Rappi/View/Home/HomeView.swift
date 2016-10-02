//
//  HomeView.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

typealias onLoadMoreData = () -> Void
typealias onClick = () -> Void

class HomeView: RappiView {
    
    // MARK: Public properties
    
    var list:UICollectionView!
    var button:UIButton!
    var onClickButton:onClick!
    
    override func createSubViews(){
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        self.list = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        list.translatesAutoresizingMaskIntoConstraints = false
        self.button = UIButton(type:.System)
        button.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func addSubviews(){
        self.addSubview(list)
        self.addSubview(button)
    }
    
    override func addStyles(){
        list.backgroundColor = UIColor.whiteColor()
        button.setTitle("test", forState: .Normal)
    }
    
    override func addActions() {
        self.button.addTarget(self, action: #selector(HomeView.method(_:)), forControlEvents: .TouchUpInside)
    }
    
    // Mark: setup constraints
    
    override func setupConstraints(){
        self.list.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0))
        self.button.autoCenterInSuperview()
    }

    
    override func changeConstraints(){
        
    }
    
    // Mark: Actions
    
    func method(sender:UIButton) {
        // Something cool here
        if (onClickButton != nil) {
            self.onClickButton()
        }
    }
    
}