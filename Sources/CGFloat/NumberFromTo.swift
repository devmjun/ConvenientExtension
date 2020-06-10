//
//  NumberFromTo.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 2020/06/10.
//  Copyright © 2020 Minjun Ju. All rights reserved.
//

import Foundation


public extension Int {
  /// var x = 10.f   => x is CGFloat
  var f: CGFloat { CGFloat(self) }
  
  var d: Double { Double(self) }
}

public extension CGFloat {
  var i: Int { Int(self) }
  
  var d: Double { Double(self) }
}

public extension Double {
  var i: Int { Int(self) }
  
  var f: CGFloat { CGFloat(self) }
}
