//
//  String+ToInt.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 21/03/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension String {
    /// return stringNumber "123456"
    var stringNumber: String? {
        return self.filter { "0123456789".contains($0) }
    }
    
    var toInt: Int? {
        return Int(self)
    }
}
