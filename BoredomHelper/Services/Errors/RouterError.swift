//
//  RouterError.swift
//  BoredomHelper
//
//  Created by Francis Breidenbach on 10/28/19.
//  Copyright © 2019 Francis Breidenbach. All rights reserved.
//

import Foundation

enum RouterError: Error {
  
  // MARK: - Cases
  
  case baseUrlCreationError(reason: String)
}
