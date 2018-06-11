/**
 * Copyright (c) 2018 www.OmiSoft.net. All rights reserved.
 */

import Foundation
import Swinject

protocol RepositoryModule: BaseModuleProtocol {
  var apiService: ApiService { get }
  var networkClient: NetworkClient { get }
}

class RepositoryImpl: BaseModule, RepositoryModule {
  
  var apiService: ApiService {
    return container.resolve(ApiService.self)!
  }
  
  var networkClient: NetworkClient {
    return container.resolve(NetworkClient.self)!
  }

  override func setup(with container: Container) {
    super.setup(with: container)
    
    container.register(NetworkClient.self) { _ in
      RxNetworkClient()
    }
    
    container.register(RxApiService.self) { resolver in
      RxApiService(client: resolver.resolve(NetworkClient.self)!)
    }
  }
  
}
