//
//  String+NSMutableAttributedString.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import UIKit

extension String {
    /**
     Estimates the height of the UILable based on the string
     */
    func height(constraintedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let label =  UILabel(frame: CGRect(x: 0, y: 0, width: width, height: .greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.text = self
        label.font = font
        label.sizeToFit()
        return label.frame.height
    }
    
    /**
     Estimates the Width of the UILable based on the string
     */
    func width(constraintHeight: CGFloat = .leastNormalMagnitude, font: UIFont) -> CGFloat {
        let label =  UILabel(frame: CGRect(x: 0, y: 0, width: .greatestFiniteMagnitude, height: constraintHeight))
        label.numberOfLines = 1
        label.text = self
        label.font = font
        label.sizeToFit()
        return label.frame.width
    }
}

