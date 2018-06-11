//
//  MainProtocols.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation

protocol MainRouterProtocol: class {
  
}

protocol MainViewProtocol: class {
  
}

protocol MainPresenterProtocol: class {
  var interactor: MainInteractorProtocol! { get set }
  var router: MainRouterProtocol! { get set }
  func configureView()
}

protocol MainInteractorProtocol: class {
  
}

protocol MainConfiguratorProtocol: class {
  func configure(with viewController: MainVC)
}
