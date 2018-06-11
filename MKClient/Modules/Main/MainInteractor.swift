//
//  MainInteractor.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation

class MainInteractor: MainInteractorProtocol {
  
  weak var presenter: MainPresenterProtocol!
  
  required init(presenter: MainPresenterProtocol) {
    self.presenter = presenter
  }
  
}
