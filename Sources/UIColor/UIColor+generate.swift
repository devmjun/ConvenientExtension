//
//  UIColor+generate.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 20/02/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UIColor {
  public static var random: UIColor {
    return UIColor(
      red: CGFloat.random(in: 0..<256) / 255,
      green: CGFloat.random(in: 0..<256) / 255,
      blue: CGFloat.random(in: 0..<256) / 255,
      alpha: 1
    )
  }
}


extension UIColor {
  public static func generate(
    rgb: CGFloat,
    alpha: CGFloat = 1.0
  ) -> UIColor {
    return UIColor(
      red: rgb/255,
      green: rgb/255,
      blue: rgb/255,
      alpha: alpha
    )
  }
  
  public static func generate(
    red r: CGFloat,
    green g: CGFloat,
    blue b: CGFloat,
    alpha a: CGFloat = 1.0
  ) -> UIColor {
    return UIColor(
      red: r/255,
      green: g/255,
      blue: b/255,
      alpha: a
    )
  }
}
