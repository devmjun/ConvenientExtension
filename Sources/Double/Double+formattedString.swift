//
//  Double+formattedString.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit
extension Double {
    public func formattedString() -> String {
        return String(format: "%.2f", self)
    }
}

