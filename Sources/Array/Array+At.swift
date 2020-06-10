//
//  Array+At.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation

extension Array {
  public func at(_ index: Int?) -> Element? {
    if let index = index, index >= 0 && index < endIndex {
      return self[index]
    }else {
      return nil
    }
  }
}
