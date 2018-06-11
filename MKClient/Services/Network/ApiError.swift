//
//  ApiError.swift
//  ViperTemplate
//
//  Created by Dmytro Romaniuk on 5/22/18.
//  Copyright © 2018 omisoft. All rights reserved.
//

import Foundation

public enum ApiError: Error {
  case networkException
  case timeOut
  case notFound
}
