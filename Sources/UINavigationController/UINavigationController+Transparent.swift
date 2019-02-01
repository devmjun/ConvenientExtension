//
//  UINavigationController+Transparent.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//
import UIKit

extension UINavigationController {
    func setTransparent(_ is: Bool, navigationBarHidden: Bool = false) {
        setNavigationBarHidden(navigationBarHidden, animated: false)
        navigationBar.setBackgroundImage(`is` ? UIImage() : nil, for: .default)
        navigationBar.shadowImage = `is` ? UIImage() : nil
        navigationBar.isTranslucent = `is`
    }
}

