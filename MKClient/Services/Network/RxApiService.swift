//
//  RxApiService.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation
import RxSwift

class RxApiService: ApiService {
    
  private let client: NetworkClient
  private let baseURL: URL = URL(string: ApiConstants.baseURL)!
  
  required public init(client: NetworkClient) {
    self.client = client
  }
  
//  public func getSomething() -> Observable<[SomeType]> {
//    let resource = Resource(url: baseURL, pathComponents: path, parameters: nil)
//    return client.getEntitiyList(forResource: resource)
//  }
  
}
