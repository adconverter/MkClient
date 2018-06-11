//
//  NetworkClient.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift
import Unbox

struct APIClientConstants {
  static let retries = 3
}

class RxNetworkClient: NetworkClient {
    
  // MARK: - Methods
  func getEntity<T: Unboxable>(forResource resource: ResourceType) -> Observable<T?> {
    return request(forResource: resource, method: .get)
      .map { data in
        guard let entity: T = try? unbox(data: data) else {
          return nil
        }
        return entity
    }
  }
  
  func getEntitiyList<T: Unboxable>(forResource resource: ResourceType) -> Observable<[T]> {
    return request(forResource: resource, method: .get)
      .map { data in
        guard let entities: [T] = try? unbox(data: data) else {
          return []
        }
        return entities
    }
  }
  
  // MARK: - Request
  private func request(forResource resource: ResourceType, method: HTTPMethod) -> Observable<Data> {
    return Observable.create { observer in
      let request = Alamofire.request(resource.url,
                                      method: method,
                                      parameters: resource.parameters,
                                      encoding: URLEncoding.default,
                                      headers: self.simpleHeaders)
        .validate()
        .responseData(completionHandler: { response in
          
          if response.result.isSuccess, let data = response.result.value {
            observer.onNext(data)
            return observer.onCompleted()
          } else {
            return observer.onError(ApiError.networkException)
          }
        })
      return Disposables.create(with: {
        request.cancel()
      })
      }
      .retry(APIClientConstants.retries)
  }
  
}

extension NetworkClient {
  fileprivate var simpleHeaders: HTTPHeaders {
    var headers = HTTPHeaders()
    headers["Accept"] = "application/json"
    return headers
  }
}
