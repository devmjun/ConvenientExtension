//
//  Array+UIViewController.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 21/03/2019.
//  Copyright © 2019 Minjun Ju. All rights reserved.
//
import UIKit

extension Array where Iterator.Element == UIViewController {
    /// Access previous ViewController in Array<UIViewController>
    public var previous: UIViewController? {
        if self.count > 1 {
            return self[self.count - 2]
        }
        return nil
    }
}
