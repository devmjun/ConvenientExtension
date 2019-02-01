//
//  UICollectionView+Set.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UICollectionView {
    func set(backgroundColor: UIColor, bounces: Bool, paging: Bool, showVerticalIndicator: Bool, showHorizontalIndicator: Bool) {
        self.backgroundColor = backgroundColor
        self.bounces = bounces
        self.isPagingEnabled = paging
        self.showsVerticalScrollIndicator = showVerticalIndicator
        self.showsHorizontalScrollIndicator = showHorizontalIndicator
    }
}

