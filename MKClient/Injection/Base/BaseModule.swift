/**
 * Copyright (c) 2018 www.OmiSoft.net. All rights reserved.
 */

import Foundation
import Swinject

protocol BaseModuleProtocol {
  func setup(with: Container)
}

class BaseModule: BaseModuleProtocol {
  var container: Container!
  
  func setup(with container: Container) {
    self.container = container
  }
}

struct RuntimeError: Error {
  let message: String
  
  init(_ message: String) {
    self.message = message
    print("Error: \(message)")
  }
  
  public var localizedDescription: String {
    return message
  }
}
