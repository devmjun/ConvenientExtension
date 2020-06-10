//
//  CALayer+shadow.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//
import UIKit

extension CALayer {
  public func shadow(
    color: CGColor,
    offset: CGSize,
    radius: CGFloat,
    opacity: Float
  ) {
    shadowColor = color
    shadowOffset = offset
    shadowRadius = radius
    shadowOpacity = opacity
  }
}
