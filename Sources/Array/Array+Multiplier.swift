//
//  Array+Multiplier.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension Array {
    static func *(lhs: Array<Element>, rhs: Int) -> Array<Element> {
        var copy = Array<Element>()
        (0..<rhs).forEach { _ in copy += lhs }
        return copy
    }
}

