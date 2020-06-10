//
//  Int+HandyExtension.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation

// https://github.com/giftbott/HandyExtensions/blob/cf1042dc1cf9947400d2af17ff903c6007639d2c/Sources/IntExtensions.swift
extension Int {
  
  // MARK: Transforming
  
  /// ex) 45.degreesToRadians -> 0.785398163397448
  public var degreesToRadians: Double {
    return Double(self) * .pi / 180.0
  }
  
  // MARK: Comparable Operators
  
  /// ex) 0.isZero -> true  ,  1.isNegative -> false
  public var isNegative: Bool { return self < 0 }
  public var isPositive: Bool { return self > 0 }
  public var isZero: Bool     { return self == 0 }
  
  public func isLess(than num: Int) -> Bool {
    return self < num
  }
  
  public func isLessThanOrEqualTo(_ num: Int) -> Bool {
    return self <= num
  }
  
  public func isEqualTo(_ num: Int) -> Bool {
    return self == num
  }
}

