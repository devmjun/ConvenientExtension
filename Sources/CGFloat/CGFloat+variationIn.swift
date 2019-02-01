//
//  CGFloat.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension CGFloat {
    mutating func increases(_ value: CGFloat...) {
        let total = value.reduce(0, +)
        self += total
    }
    
    mutating func decreases(_ value: CGFloat...) {
        let total = value.reduce(0, +)
        self -= total
    }
}

