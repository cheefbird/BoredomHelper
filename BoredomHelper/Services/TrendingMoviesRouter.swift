//
//  TrendingMoviesRouter.swift
//  BoredomHelper
//
//  Created by Francis Breidenbach on 10/28/19.
//  Copyright © 2019 Francis Breidenbach. All rights reserved.
//

import Foundation
import Alamofire

enum TrendingMoviesRouter: URLRequestConvertible {
  
  // MARK: - Cases
  case getWeeklyMovies
  
  // MARK: - URL Components
  
  var baseUrl: String {
    return "https://api.themoviedb.org/3/"
  }
  
  var method: HTTPMethod {
    return .get
  }
  
  var relativePath: String {
    return "trending/movie/week"
  }
  
  var parameters: Parameters {
    var params = Parameters()
    
    params["api_key"] = "7e6576c1d12633c8fd1eee0cb2e995ed"
    
    return params
  }
  
  var headers: [String: String] {
    var headers = [String: String]()
    
    headers["Content-Type"] = "application/json"
    headers["Accept"] = "application/json"
    
    return headers
  }
  
  // MARK: - Methods
  
  func asURLRequest() throws -> URLRequest {
    guard let url = URL(string: baseUrl) else {
      throw RouterError.baseUrlCreationError(reason: "Unable to create URL object using base of: \(baseUrl)")
    }
    
    let fullUrl = url.appendingPathComponent(relativePath)
    
    var request = URLRequest(url: fullUrl)
    request.httpMethod = method.rawValue
    
    for (key, value) in headers {
      request.setValue(value, forHTTPHeaderField: key)
    }
    
    let encoding = URLEncoding.default
    
    return try encoding.encode(request, with: nil)
  }
}
