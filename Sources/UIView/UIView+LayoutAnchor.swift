//
//  UIView+LayoutAnchor.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

// https://github.com/giftbott/iOS-Architecture-Sample/blob/master/MVC-Code/MVC-Code/Utility/UIView%2BLayoutAnchor.swift
@available(iOS 9.0, *)
extension UIView {
  public func topAnchor(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
    topAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func topAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
    topAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func topAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
    topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func leadingAnchor(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
    leadingAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func leadingAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
    leadingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func leadingAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
    leadingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func bottomAnchor(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
    bottomAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func bottomAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
    bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func bottomAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
    bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func trailingAnchor(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
    trailingAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func trailingAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
    trailingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func trailingAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
    trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func widthAnchor(constant: CGFloat) -> Self {
    widthAnchor.constraint(equalToConstant: constant).isActive = true
    return self
  }
  
  public func widthAnchor(to anchor: NSLayoutDimension, constant: CGFloat = 0) -> Self {
    widthAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func widthAnchor(greaterThanOrEqualToConstant constant: CGFloat) -> Self {
    widthAnchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true
    return self
  }
  
  public func widthAnchor(lessThanOrEqualToConstant constant: CGFloat) -> Self {
    widthAnchor.constraint(lessThanOrEqualToConstant: constant).isActive = true
    return self
  }
  
  
  public func heightAnchor(constant: CGFloat) -> Self {
    heightAnchor.constraint(equalToConstant: constant).isActive = true
    return self
  }
  
  public func heightAnchor(to anchor: NSLayoutDimension, constant: CGFloat = 0) -> Self {
    heightAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func heightAnchor(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0) -> Self {
    heightAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant).isActive = true
    return self
  }
  
  public func heightAnchor(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0) -> Self {
    heightAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant).isActive = true
    return self
  }
  
  public func heightAnchor(greaterThanOrEqualToConstant constant: CGFloat) -> Self {
    heightAnchor.constraint(greaterThanOrEqualToConstant: constant).isActive = true
    return self
  }
  
  
  public func dimensionAnchors(width widthConstant: CGFloat, height heightConstant: CGFloat) -> Self {
    widthAnchor.constraint(equalToConstant: widthConstant).isActive = true
    heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
    return self
  }
  
  public func dimensionAnchors(size: CGSize) -> Self {
    widthAnchor.constraint(equalToConstant: size.width).isActive = true
    heightAnchor.constraint(equalToConstant: size.height).isActive = true
    return self
  }
  
  public func centerYAnchor(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
    centerYAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func centerXAnchor(to anchor: NSLayoutXAxisAnchor) -> Self {
    centerXAnchor.constraint(equalTo: anchor).isActive = true
    return self
  }
  
  public func centerXAnchor(to anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
    centerXAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func firstBaselineAnchor(to anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
    firstBaselineAnchor.constraint(equalTo: anchor, constant: constant).isActive = true
    return self
  }
  
  public func equalToSuperView() -> Self {
    guard let superView = superview else {
      fatalError("This layout is not configured")
//      print("This layout is not configured")
      return self
    }
    return topAnchor(to: superView.topAnchor)
      .bottomAnchor(to: superView.bottomAnchor)
      .leadingAnchor(to: superView.leadingAnchor)
      .trailingAnchor(to: superView.trailingAnchor)
  }
  
  
  /**
   Don't forget useing it when you develop programmatically UI
   */
  public func activateAnchors() {
    translatesAutoresizingMaskIntoConstraints = false
  }
}
