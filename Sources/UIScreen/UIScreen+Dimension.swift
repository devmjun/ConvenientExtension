//
//  UIScreen+Dimension.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UIScreen {
    public static var mainSize: CGSize {
        return UIScreen.main.bounds.size
    }
    public static var mainWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    public static var mainHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    public static var mainbounds: CGRect {
        return UIScreen.main.bounds
    }
}
