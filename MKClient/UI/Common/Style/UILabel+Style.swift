//
//  UILabel+Style.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation
import UIKit

// MARK: COMMON
struct TextStyle {
  
}

// MARK: FONT
extension TextStyle {
  static func font(_ font: UIFont) -> Decoration<UILabel> {
    return {
      (view: UILabel) -> Void in
      view.font = font
    }
  }
  
  static var fontHeader: Decoration<UILabel> {
    return font(UIFont(name: ".SFUIText-Medium", size: 18)!)
  }
  
  static var fontCellHeader: Decoration<UILabel> {
    return font(UIFont(name: ".SFUIText-Medium", size: 14)!)
  }
}
