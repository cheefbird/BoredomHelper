//
//  TrendingMoviesRouterTests.swift
//  BoredomHelperTests
//
//  Created by Francis Breidenbach on 10/28/19.
//  Copyright © 2019 Francis Breidenbach. All rights reserved.
//

import XCTest
@testable import BoredomHelper

class TrendingMoviesRouterTests: XCTestCase {
  
  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testBaseUrl() {
    XCTAssertEqual(TrendingMoviesRouter.getWeeklyMovies.baseUrl, "https://api.themoviedb.org/3/")
  }
  
}
