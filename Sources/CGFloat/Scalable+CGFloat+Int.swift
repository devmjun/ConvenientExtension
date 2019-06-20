//
//  Scalable+CGFloat+Int.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 20/06/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

public protocol Scalable {
    var dynamicWidth: CGFloat { get }
    var dynamicHeight: CGFloat { get }
}

extension Int: Scalable {
    public var dynamicWidth: CGFloat {
        let copy = CGFloat(self)
        let standardWidth: CGFloat = 375 // iPhone6s Width
        let ratio = (copy / standardWidth)
        return (UIScreen.mainWidth * ratio).rounded()
    }
    
    public var dynamicHeight: CGFloat {
        let copy = CGFloat(self)
        let standardHeight: CGFloat = 667 // iPhone6s Width
        let ratio = (copy / standardHeight)
        return (UIScreen.mainWidth * ratio).rounded()
    }
}

extension CGFloat: Scalable {
    public var dynamicWidth: CGFloat {
        let copy = self
        let standardWidth: CGFloat = 375 // iPhone6s Width
        let ratio = (copy / standardWidth)
        return (UIScreen.mainWidth * ratio).rounded()
    }
    
    public var dynamicHeight: CGFloat {
        let copy = self
        let standardHeight: CGFloat = 667 // iPhone6s Width
        let ratio = (copy / standardHeight)
        return (UIScreen.mainWidth * ratio).rounded()
    }
}
