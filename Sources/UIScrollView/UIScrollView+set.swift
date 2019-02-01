//
//  UIScrollView+set.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UIScrollView {
    func set(bounces: Bool, directionalLock: Bool, showsHorizontalIndicator: Bool, showsVerticalIndicator: Bool, isPaging: Bool) {
        self.bounces = bounces
        self.isDirectionalLockEnabled = directionalLock
        self.showsHorizontalScrollIndicator = showsHorizontalIndicator
        self.showsVerticalScrollIndicator = showsVerticalIndicator
        self.isPagingEnabled = isPaging
    }
}

