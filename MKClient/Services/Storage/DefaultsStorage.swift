//
//  DefaultsStorage.swift
//  TemplateProject
//

import Foundation

class DefaultsStorage: LocalStorage {
  
  let keyIsFirstStart = "KEY_IS_FIRST_START"
  
  var isFirstStart: Bool {
    get {
      return (UserDefaults.standard.object(forKey: keyIsFirstStart) as? Bool) ?? true
    }
    
    set {
      UserDefaults.standard.set(newValue, forKey: keyIsFirstStart)
      UserDefaults.standard.synchronize()
    }
  }
  
}
