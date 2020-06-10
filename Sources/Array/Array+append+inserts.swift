//
//  Array+append+inserts.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation

extension Array {
  public mutating func appends(elements: Array) {
    elements.forEach { self.append($0) }
  }
  
  public mutating func inserts(_ elements: Array, at i: Int, reverse: Bool = true) {
    switch reverse {
    case true:
      elements.reversed().forEach { self.insert($0, at: i) }
    case false:
      elements.forEach { self.insert($0, at: i) }
    }
  }
}


