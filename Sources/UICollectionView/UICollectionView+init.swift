//
//  UICollectionView+init.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

extension UICollectionView {
    /**
     This CollectionView has to use Autolayout
     */
    public convenience init(collectionViewLayout: UICollectionViewLayout) {
        self.init(frame: .zero, collectionViewLayout: collectionViewLayout)
    }
}

