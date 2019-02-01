//
//  NSLayoutConstraint+Active.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    func active() -> Self {
        self.isActive = true
        return self
    }
    
    func increase(constant: CGFloat...) {
        let total = constant.reduce(0, +)
        self.constant += total
    }
    
    func decreases(constant: CGFloat...) {
        let total = constant.reduce(0, +)
        self.constant -= total
    }
}

