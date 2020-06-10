//
//  Character+Asci.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation

extension Character {
  
  /// Return asciiValue if it is ASCII or nil
  public var asciiValue: UInt32? {
    guard let unicode = unicodeScalars.first, unicode.isASCII else { return nil }
    return unicode.value
  }
}
