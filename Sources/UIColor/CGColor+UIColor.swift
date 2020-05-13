//
//  CGColor+UIColor.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 2020/05/13.
//  Copyright © 2020 Minjun Ju. All rights reserved.
//

import UIKit

public extension CGColor {
  class var black: CGColor { UIColor.black.cgColor }

  class var darkGray: CGColor { UIColor.darkGray.cgColor }

  class var lightGray: CGColor { UIColor.lightGray.cgColor }

  class var white: CGColor { UIColor.white.cgColor }

  class var gray: CGColor { UIColor.gray.cgColor }

  class var red: CGColor { UIColor.red.cgColor }

  class var green: CGColor { UIColor.green.cgColor }

  class var blue: CGColor { UIColor.blue.cgColor }

  class var cyan: CGColor { UIColor.cyan.cgColor }

  class var yellow: CGColor { UIColor.yellow.cgColor }

  class var magenta: CGColor { UIColor.magenta.cgColor }

  class var orange: CGColor { UIColor.orange.cgColor }

  class var purple: CGColor { UIColor.purple.cgColor }

  class var brown: CGColor { UIColor.brown.cgColor }

  class var clear: CGColor { UIColor.clear.cgColor }
  
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


