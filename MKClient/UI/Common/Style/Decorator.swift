//
//  Decorator.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation
import UIKit

infix operator <-

typealias Decoration<T> = (T) -> Void

struct Decorator<T> {
  let object: T
  func apply(_ decorations: Decoration<T>...) {
    decorations.forEach({ $0(object) })
  }
}

protocol DecoratorCompatible {
  associatedtype DecoratorCompatibleType
  var decorator: Decorator<DecoratorCompatibleType> { get }
}

extension DecoratorCompatible {
  var decorator: Decorator<Self> {
    return Decorator(object: self)
  }
  
  static func <- (lhs: Self, rhs: [Decoration<Self>]) {
    for decoration in rhs {
      lhs.decorator.apply(decoration)
    }
  }
}
