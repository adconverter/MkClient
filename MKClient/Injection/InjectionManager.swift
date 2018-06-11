/**
 * Copyright (c) 2018 www.OmiSoft.net. All rights reserved.
 */

import Foundation
import Swinject

final class InjectionManager {
  
  // MARK: - Private properties
  private static var instance: InjectionManager?
  
  private var repositoryModule: RepositoryModule!
  
  static var shared: InjectionManager {
    if let instance = instance {
      return instance
    } else {
      fatalError("Please, setup InjectionManager before")
    }
  }
  
  // MARK: - Initialization
  static func setup(builder: Builder) {
    instance = InjectionManager(builder: builder)
  }
  
  private init(builder: Builder) {
    repositoryModule = builder.repositoryModule
  }
  
  // MARK: - Injected classes
  var apiService: ApiService {
    return repositoryModule.apiService
  }
  
  var networkClient: NetworkClient {
    return repositoryModule.networkClient
  }
  
  // MARK: - Builder
  static var newBuilder: Builder {
    return Builder()
  }
  
  class Builder {
    fileprivate var repositoryModule: RepositoryModule!
    
    private let container: Container
    
    fileprivate init() {
      container = Container()
    }
    
    public func repositoryModule(_ repositoryModule: RepositoryModule) -> Builder {
      repositoryModule.setup(with: container)
      self.repositoryModule = repositoryModule
      
      return self
    }
    
    public func build() -> InjectionManager {
      return InjectionManager(builder: self)
    }
  }
}
