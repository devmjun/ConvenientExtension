//
//  NSMutableAttributedString+Attributes.swift
//  ConvenientExtension
//
//  Created by Minjun Ju on 30/01/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//

import Foundation

extension NSMutableAttributedString {
    public enum MutableAttributeType {
        case source(name: NSAttributedString.Key, value: Any, range: NSRange)
    }
    
    public func addAttributes(_ sources: MutableAttributeType...) {
        sources.forEach {
            guard case .source(let name, let value, let range) = $0 else {
                return
            }
            
            addAttribute(name, value: value, range: range)
        }
    }
    
    public func setAttributes(_ sources: MutableAttributeType...) {
        sources.forEach {
            guard case .source(let name, let value, let range) = $0 else {
                return
            }
            removeAttribute(name, range: range)
            setAttributes([name: value], range: range)
        }
    }
}
