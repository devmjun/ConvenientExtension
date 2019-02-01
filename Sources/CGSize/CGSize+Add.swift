//
//  CGSize+Add.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension CGSize {
    public func add(height: CGFloat) -> CGSize {
        return CGSize(width: self.width, height: self.height + height)
    }
    public func add(width: CGFloat) -> CGSize {
        return CGSize(width: self.width + width, height: self.height)
    }
}

