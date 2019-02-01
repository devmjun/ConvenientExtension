//
//  UIView+AddSubviews.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit
extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
    
    func addSubviewsList(_ views: [UIView]) {
        views.forEach { addSubview($0) }
    }    
}


