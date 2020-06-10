//
//  UIFont+Traits.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UIFont {
  public func withTraits(traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
    let descriptor = fontDescriptor.withSymbolicTraits(traits)
    return UIFont(descriptor: descriptor!, size: 0) //size 0 means keep the size as it is
  }
  
  public func bold() -> UIFont {
    return withTraits(traits: .traitBold)
  }
  
  public func italic() -> UIFont {
    return withTraits(traits: .traitItalic)
  }
}
