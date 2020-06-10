//
//  Optional+Unwap.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation

// https://github.com/giftbott/HandyExtensions/blob/master/Sources/OptionalExtensions.swift
extension Optional {
  
  /// Convenience & safety unwrapped data handler which skip nil object
  ///
  ///     var text: String? = nil
  ///     text.unwrap {
  ///       print($0)  // skip
  ///     }
  ///
  ///     var number: Int? = 3
  ///     number.unwrap {
  ///       print($0)  // 3
  ///     }
  ///
  /// - Parameter handler: Optional data handler
  public func unwrap(for handler: (Wrapped) -> Void) {
    switch self {
    case .none: break
    case .some(let wrapped): handler(wrapped)
    }
  }
}

