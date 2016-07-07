//
//  HomeView.swift
//  Rappi
//
//  Created by Jorge Sanmartin on 7/6/16.
//  Copyright © 2016 gravility. All rights reserved.
//

import UIKit

typealias onLoadMoreData = () -> Void

class HomeView: RappiView {
    
    // MARK: Public properties
    
    var title: UILabel!
    var list:UICollectionView!
    
    override func createSubViews(){
        self.title = UILabel.newAutoLayoutView()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        self.list = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        self.list.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func addSubviews(){
        self.addSubview(title)
        self.addSubview(list)
    }
    
    override func addStyles(){
        title.text = "Rappi"
        title.backgroundColor = UIColor.grayColor()
        title.textColor = UIColor.blackColor()
        title.font = UIFont.boldSystemFontOfSize(14)
        list.backgroundColor = UIColor.whiteColor()
    }
    
    override func setupConstraints(){
        self.list.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0))
        self.title.autoSetDimensionsToSize(CGSize(width: 100.0,height: 100.0))
        self.title.autoAlignAxisToSuperviewAxis(.Horizontal)
        self.title.autoPinEdgeToSuperviewEdge(.Top)
        self.title.autoPinEdgeToSuperviewEdge(.Bottom)
    }
    
    override func changeConstraints(){
        
    }
    
}