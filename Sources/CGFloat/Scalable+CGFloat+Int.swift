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
  /// dynamic value
  /// use like this -> 25.dynamicWidth
  public var dynamicWidth: CGFloat {
    
    let copy = Double(self)
    let standardWidth: Double = 375.0 // iPhone6s Width
    let ratio = (copy / standardWidth)
    let currentWidth = Double(UIScreen.mainWidth)
    return CGFloat(currentWidth * ratio).rounded()
  }
  
  /// dynamic value
  /// use like this -> 25.dynamicHeight
  public var dynamicHeight: CGFloat {
    let copy = Double(self)
    let standardHeight: Double = 667.0 // iPhone6s Height
    let ratio = (copy / standardHeight)
    let currentHeight = Double(UIScreen.mainHeight)
    
    return CGFloat(currentHeight * ratio).rounded()
  }
}

extension CGFloat: Scalable {
  /// dynamic value
  /// use like this -> 25.dynamicWidth
  public var dynamicWidth: CGFloat {
    let copy = Double(self)
    let standardWidth: Double = 375.0 // iPhone6s Width
    let ratio = (copy / standardWidth)
    let currentWidth = Double(UIScreen.mainWidth)
    return CGFloat(currentWidth * ratio).rounded()
  }
  
  /// dynamic value
  /// use like this -> 25.dynamicHeight
  public var dynamicHeight: CGFloat {
    let copy = Double(self)
    let standardHeight: Double = 667.0 // iPhone6s Height
    let ratio = (copy / standardHeight)
    let currentHeight = Double(UIScreen.mainHeight)
    
    return CGFloat(currentHeight * ratio).rounded()
  }
}
