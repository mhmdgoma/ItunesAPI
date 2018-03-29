//
//  ItunesAPIUITests.swift
//  ItunesAPIUITests
//
//  Created by Gom3a on 3/28/18.
//  Copyright © 2018 Gom3a. All rights reserved.
//

import XCTest

class ItunesAPIUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        // send a command line argument to our app,
        // enable it to reset its state
        app.launchArguments.append("--uitesting")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGoingThroughOnboarding() {
        app.launch()
        
        // Make sure we're displaying Albmus
        XCTAssertTrue(app.isDisplayingAlbumesView)
        
        // Swipe left three times to go through the pages
        app.swipeLeft()
        app.swipeLeft()
        app.swipeLeft()
        
        app.swipeRight()
        app.swipeRight()
        app.swipeRight()
        
        // Tap the "Next" button
        app.buttons["NEXT"].tap()
    }
    
}

