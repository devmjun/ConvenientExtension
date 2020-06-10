//
//  NSLayoutConstraint+Active.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
  public func active() -> Self {
    self.isActive = true
    return self
  }
  
  public func increase(constant: CGFloat...) {
    let total = constant.reduce(0, +)
    self.constant += total
  }
  
  public func decreases(constant: CGFloat...) {
    let total = constant.reduce(0, +)
    self.constant -= total
  }
}

