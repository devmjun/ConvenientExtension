//
//  UIStackView+Clear.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension UIStackView {
    func clearSubviews() {
        self.clearsContextBeforeDrawing = true
        self.subviews.forEach { $0.removeFromSuperview() }
        self.arrangedSubviews.forEach { $0.removeFromSuperview() }
    }
}

