//
//  HelloWorldUITestsLaunchTests.swift
//  HelloWorldUITests
//
//  Created by Matthew Vollmer on 11/9/23.
//

import XCTest

final class HelloWorldUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["Hey there!"].tap()

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
