//
//  UIViewController+addChilds.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 2020/04/17.
//  Copyright © 2020 Minjun Ju. All rights reserved.
//

import UIKit


public extension UIViewController {
  func addChilds(_ subViewControllers: UIViewController...) {
    subViewControllers.forEach(addChild(_:))
  }
}
