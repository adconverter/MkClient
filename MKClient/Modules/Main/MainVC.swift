//
//  ViewController.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
  
  var presenter: MainPresenterProtocol!
  let configurator: MainConfiguratorProtocol = MainConfigurator()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configurator.configure(with: self)
    presenter.configureView()
  }
  
}

extension MainVC: MainViewProtocol {

}
