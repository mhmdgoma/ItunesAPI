//
//  ItunesAPITests.swift
//  ItunesAPITests
//
//  Created by Gom3a on 3/28/18.
//  Copyright © 2018 Gom3a. All rights reserved.
//

import XCTest
import iTunesSearchAPI

@testable import ItunesAPI

class ItunesAPITests: XCTestCase {
    
    let itunesClient = iTunes(session: URLSession.shared, debug: true)
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSerchAPiCall() {
        // This is an example of a performance te*st case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
        
        let options = Options(country: .unitedStates,
                              limit: 2,
                              language: .english,
                              includeExplicitContent: true)
        
        itunesClient.search(for: "Drake", ofType: .music(.movie), options: options) { result in
            XCTAssertNotNil(result)
            XCTAssertNotNil(result.value)
        }
    }
    
}

