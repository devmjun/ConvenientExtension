//
//  UILabel+setup.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UILabel {
  public func setup(
    textColor color: UIColor,
    textAlignment alignment: NSTextAlignment,
    numberOfLines lines: Int,
    font customFont: UIFont = UIFont.preferredFont(forTextStyle: .body)
  ) {
    textColor = color
    textAlignment = alignment
    numberOfLines = lines
    font = customFont
  }
}


