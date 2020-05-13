//
//  CGColor+UIColor.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 2020/05/13.
//  Copyright © 2020 Minjun Ju. All rights reserved.
//

import UIKit


public extension CGColor {
  class var black: CGColor {
    return UIColor.black.cgColor
  }

  class var darkGray: CGColor {
    return UIColor.darkGray.cgColor
  }

  class var lightGray: CGColor {
    return UIColor.lightGray.cgColor
  }

  class var white: CGColor {
    return UIColor.white.cgColor
    
  }

  class var gray: CGColor {
    return UIColor.gray.cgColor
  }

  class var red: CGColor {
    return UIColor.red.cgColor
  }

  class var green: CGColor {
    return UIColor.green.cgColor
  }

  class var blue: CGColor {
    return UIColor.blue.cgColor
  }

  class var cyan: CGColor {
    return UIColor.cyan.cgColor
  }

  class var yellow: CGColor {
    return UIColor.yellow.cgColor
  }

  var magenta: CGColor {
    return UIColor.magenta.cgColor
  }

  var orange: CGColor {
    return UIColor.orange.cgColor
  }

  class var purple: CGColor {
    return UIColor.purple.cgColor
  }

  class var brown: CGColor {
    return UIColor.brown.cgColor
  }

  class var clear: CGColor {
    return UIColor.clear.cgColor
  }
  
  static func generate(
    rgb: CGFloat,
    alpha: CGFloat = 1.0
  ) -> CGColor {
    return UIColor(
      red: rgb/255,
      green: rgb/255,
      blue: rgb/255,
      alpha: alpha
    ).cgColor
  }
  
  static func generate(
    red r: CGFloat,
    green g: CGFloat,
    blue b: CGFloat,
    alpha a: CGFloat = 1.0
  ) -> CGColor {
    return UIColor(
      red: r/255,
      green: g/255,
      blue: b/255,
      alpha: a
    ).cgColor
  }
}


