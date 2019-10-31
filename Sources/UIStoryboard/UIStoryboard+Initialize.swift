//
//  UIStoryboard+Initialize.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 2019/10/31.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit
public extension UIStoryboard {
  /// Main storyboard
  var main: UIStoryboard {
    return UIStoryboard(name: "Main", bundle: nil)
  }
  
  /// Instantiates and returns the view controller with the specified identifier.
  ///
  /// - Parameter identifier: uniquely identifies equals to Class name
  /// - Returns: The view controller corresponding to the specified identifier string. If no view controller is associated with the string, this method throws an exception.
  static func instantiateViewController<T>(
    storyboard name: String,
    withIdentifier identifier: T.Type
  ) -> T where T: UIViewController {
    let storyboard = UIStoryboard(name: name, bundle: nil)
    let className = String(describing: identifier)
    guard let vc =  storyboard.instantiateViewController(withIdentifier: className) as? T else {
      fatalError("Cannot find controller with identifier \(className)")
    }
    return vc
  }
}

