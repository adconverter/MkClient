//
//  MainConfigurator.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation
import UIKit

class MainConfigurator: MainConfiguratorProtocol {
  
  let injectionManager = InjectionManager.shared
  
  func configure(with viewController: MainVC) {
    let presenter = MainPresenter(view: viewController)
    let interactor = MainInteractor(presenter: presenter)
    let router = MainRouter(viewController: viewController)
    
    viewController.presenter = presenter
    presenter.interactor = interactor
    presenter.router = router
  }
  
}
