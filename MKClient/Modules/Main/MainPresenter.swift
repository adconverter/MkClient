//
//  MainPresenter.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation

class MainPresenter: MainPresenterProtocol {
  
  var interactor: MainInteractorProtocol!
  weak var view: MainViewProtocol!
  
  var router: MainRouterProtocol!
  
  required init(view: MainViewProtocol) {
    self.view = view
  }
  
  func configureView() {
    
  }
  
}
