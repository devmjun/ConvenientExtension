//
//  UIButton+sugar+setup.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit


extension UIButton {
  public func setImages(
    _ images: [UIImage?],
    for states: [UIControl.State]
  ) {
    zip(images, states).forEach {
      setImage($0, for: $1)
    }
  }
  
  public func setBackgroundImages(
    _ images: [UIImage?] ,
    for states: [UIControl.State]
  ) {
    zip(images, states).forEach {
      setBackgroundImage($0, for: $1)
    }
  }
  
  public func setTitleColors(
    _ color: [UIColor?],
    for states: [UIControl.State]
  ) {
    zip(color, states).forEach{
      setTitleColor($0, for: $1)
    }
  }
  
  public func setFont(_ font: UIFont) {
    titleLabel?.font = font
  }
  
  public func set(
    title str: String,
    titleColor color: UIColor,
    backgroundColor: UIColor = .white,
    state: UIControl.State
  ) {
    setTitle(str, for: state)
    setTitleColor(color, for: state)
    self.backgroundColor = backgroundColor
  }
  
  public func set(
    title: String? = nil,
    attributedTitle: NSAttributedString? = nil,
    font: UIFont,
    numberOfLine: Int,
    for state: UIControl.State
  ) {
    setTitle(title, for: state)
    setAttributedTitle(attributedTitle, for: state)
    setFont(font)
    titleLabel?.numberOfLines = numberOfLine
  }
}
