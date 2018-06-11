//
//  MainRouter.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation
import UIKit

class MainRouter: MainRouterProtocol {
  
  weak var viewController: MainVC!
  
  init(viewController: MainVC) {
    self.viewController = viewController
  }
  
  func closeCurrentViewController() {
    viewController.dismiss(animated: true, completion: nil)
  }
  
  func showSomeScene() {
    //viewController.performSegue(withIdentifier: viewController.selfToAboutSegueName, sender: nil)
  }
  
  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // prepare here some data for destination viewController
  }

}
