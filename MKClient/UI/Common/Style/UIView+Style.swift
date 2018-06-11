//
//  UIView+Style.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import UIKit
import Foundation

extension UIView: DecoratorCompatible {}

// MARK: COMMON
struct Style {
  
}

// MARK: SHAPE
extension Style {
  
  static func corners(withRadius radius: CGFloat) -> Decoration<UIView> {
    return {
      (view: UIView) -> Void in
      view.layer.cornerRadius = radius
      view.clipsToBounds = true
    }
  }
  
  static var cornersSmall: Decoration<UIView> {
    return corners(withRadius: 5)
  }
  
  static var cornersMedium: Decoration<UIView> {
    return corners(withRadius: 10)
  }
  
  static var cornersLarge: Decoration<UIView> {
    return corners(withRadius: 20)
  }
  
}

// MARK: COLOR
extension Style {
  
  static func gradient(withColors colors: [UIColor]) -> Decoration<UIView> {
    return {
      (view: UIView) -> Void in
      
      let gradient: CAGradientLayer = CAGradientLayer()
      
      gradient.frame = view.bounds
      gradient.colors = colors.map { $0.cgColor }
      gradient.startPoint = CGPoint(x: 0, y: 0.5)
      gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
      view.layer.insertSublayer(gradient, at: 0)
    }
  }
  
  static func background(color: UIColor) -> Decoration<UIView> {
    return {
      (view: UIView) -> Void in
      view.backgroundColor = color
    }
  }
  
}
