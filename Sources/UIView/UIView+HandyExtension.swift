//
//  UIView+HandyExtension.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation

// https://github.com/giftbott/HandyExtensions/blob/master/Sources/UIViewExtensions.swift
extension UIView {
  /// let view = UIView(x: 0, y: 20, w: 200, h: 200)
  public convenience init(x: CGFloat, y: CGFloat, w: CGFloat, h: CGFloat) {
    self.init(frame: CGRect(x: x, y: y, width: w, height: h))
  }
  
  public convenience init(origin: CGPoint, size: CGSize) {
    self.init(frame: CGRect(origin: origin, size: size))
  }
}


// MARK: - Computed Property
extension UIView {
  /// Call view's parent UIViewController responder.
  /// view.viewController
  public var viewController: UIViewController? {
    var parentResponder: UIResponder? = self
    while parentResponder != nil {
      parentResponder = parentResponder!.next
      
      if let viewController = parentResponder as? UIViewController {
        return viewController
      }
    }
    return nil
  }
  
  /// var view = UIView(x: 0, y: 0, width: 100, height: 100)
  ///
  ///     view.x = 50
  ///     view.y = 50
  ///     view.width  = 50
  ///     view.height = 50
  public var x: CGFloat {
    get { return frame.origin.x }
    set { self.frame.origin.x = newValue }
  }
  
  public var y: CGFloat {
    get { return frame.origin.y }
    set { frame.origin.y = newValue }
  }
  
  public var width: CGFloat {
    get { return frame.width }
    set { frame.size.width = newValue }
  }
  
  public var height: CGFloat {
    get { return frame.height }
    set { frame.size.height = newValue }
  }
  
  public var maxX: CGFloat {
    get { return x + width }
    set { x = newValue - width }
  }
  
  public var maxY: CGFloat {
    get { return y + height }
    set { y = newValue - height }
  }
  
  public var midX: CGFloat {
    get { return x + (width / 2) }
    set { x = newValue - (width / 2) }
  }
  
  public var midY: CGFloat {
    get { return y + (height / 2) }
    set { y = newValue - (height / 2) }
  }
  
  public var size: CGSize {
    get { return frame.size }
    set { frame.size = newValue }
  }
  
  @IBInspectable
  public var cornerRadiusValue: CGFloat {
    get { return layer.cornerRadius }
    set { layer.cornerRadius = newValue }
  }
}
