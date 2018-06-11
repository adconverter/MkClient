//
//  NetworkProtocol.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation
import RxSwift
import Unbox

protocol ApiService {
  
}

protocol NetworkClient {
  func getEntity<T: Unboxable>(forResource resource: ResourceType) -> Observable<T?>
  func getEntitiyList<T: Unboxable>(forResource resource: ResourceType) -> Observable<[T]>
}
