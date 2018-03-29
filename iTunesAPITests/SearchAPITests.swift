//
//  SearchAPITests.swift
//  ItunesAPITests
//
//  Created by Gom3a on 3/28/18.
//  Copyright © 2018 Gom3a. All rights reserved.
//

import XCTest
@testable import iTunesSearchAPI

class SearchAPITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testSearch() {
//        // Use recording to get started writing UI tests.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
    
}
