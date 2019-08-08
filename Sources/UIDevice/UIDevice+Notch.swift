//
//  UIDevice+Notch.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 08/08/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UIDevice {
    /// iPhoneX series
    @available(iOS 11.0, *)
    static var bottomNotch: CGFloat {
        guard let applicationKeyWindow = UIApplication.shared.keyWindow else {
            return 0
        }
        return applicationKeyWindow.safeAreaInsets.bottom
    }
    
    /// iPhoneX series
    @available(iOS 11.0, *)
    static var topNotch: CGFloat {
        guard let applicationKeyWindow = UIApplication.shared.keyWindow else {
            return 0
        }
        return applicationKeyWindow.safeAreaInsets.top
    }
}
