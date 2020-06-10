//
//  UIApplication+openSetting.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation

extension UIApplication {
  public func openSettings() {
    guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {
      return
    }
    if #available(iOS 10.0, *) {
      self.open(settingURL, options: [:], completionHandler: nil)
    } else {
      // Fallback on earlier versions
      self.openURL(settingURL)
    }
  }
}

