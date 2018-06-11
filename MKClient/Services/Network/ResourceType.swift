//
//  ResourceType.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation

protocol ResourceType {
  var url: URL { get }
  var parameters: [String: Any]? { get }
  init(url: URL, pathComponents: String?, parameters: [String: Any]?)
}

struct Resource: ResourceType {
  
  var url: URL
  var parameters: [String: Any]?
  
  init(url: URL, pathComponents: String?, parameters: [String: Any]?) {
    if let pathComponents = pathComponents {
      self.url = url.appendingPathComponent(pathComponents)
    } else {
      self.url = url
    }
    
    self.parameters = parameters
  }
  
}
