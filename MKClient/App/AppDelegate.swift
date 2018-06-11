//
//  AppDelegate.swift
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    let builder = InjectionManager.newBuilder
      .repositoryModule(RepositoryImpl())
    
    InjectionManager.setup(builder: builder)
    
    return true
  }
  
}
