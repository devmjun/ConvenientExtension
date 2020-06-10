//
//  UIView+Priority.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension UIView {
  public enum ContentPriority {
    case hugging(priority: UILayoutPriority, axis: NSLayoutConstraint.Axis)
    case compressionResitance(priority: UILayoutPriority, axis: NSLayoutConstraint.Axis)
  }
  
  public func set(priority: [ContentPriority]) {
    priority.forEach { [weak self] in
      switch $0 {
      case .hugging(let priority, let axis):
        self?.setContentHuggingPriority(priority, for: axis)
      case .compressionResitance(let priority, let axis):
        self?.setContentCompressionResistancePriority(priority, for: axis)
      }
    }
  }
}

