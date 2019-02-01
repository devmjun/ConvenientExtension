//
//  UIScreen+Dimension.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UIScreen {
    static var mainSize: CGSize {
        return UIScreen.main.bounds.size
    }
    static var mainWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    static var mainHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    static var mainbounds: CGRect {
        return UIScreen.main.bounds
    }
}
