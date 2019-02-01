//
//  CALayer+setBorder.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension CALayer {
    public func setBorder(_ color: CGColor, width: CGFloat, cornerRadius: CGFloat = 0) {
        borderColor = color
        borderWidth = width
        self.cornerRadius = cornerRadius
    }
}
