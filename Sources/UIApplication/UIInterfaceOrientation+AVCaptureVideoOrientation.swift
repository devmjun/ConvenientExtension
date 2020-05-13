//
//  UIInterfaceOrientation+AVCaptureVideoOrientation.swift
//  ConvenientExtension
//
//  Created by MinjunJu on 2020/05/13.
//  Copyright © 2020 Minjun Ju. All rights reserved.
//

import UIKit
import AVFoundation

public extension UIApplication {
  static func avCapturevideoOrientationFromStatusBarOrientation() -> AVCaptureVideoOrientation {
    switch shared.statusBarOrientation {
    case .portrait:
      return .portrait
      
    case .portraitUpsideDown:
      return .portraitUpsideDown
      
    case .landscapeLeft:
      return .landscapeLeft
      
    case .landscapeRight:
      return .landscapeRight
      
    default:
      return .portrait
    }
  }
}

