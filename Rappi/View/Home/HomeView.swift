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
    
    var list:UICollectionView!
    
    override func createSubViews(){
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        self.list = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        self.list.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func addSubviews(){
        self.addSubview(list)
    }
    
    override func addStyles(){
        list.backgroundColor = UIColor.whiteColor()
    }
    
    override func setupConstraints(){
        self.list.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0))
    }
    
    override func changeConstraints(){
        
    }
    
}