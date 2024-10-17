//
//  PorscheUITests.swift
//  PorscheUITests
//
//  Created by Mohamed  on 4/9/2024.
//

import XCTest

final class PorscheUITests: XCTestCase {
    var app: XCUIApplication!
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    override func tearDownWithError() throws {
    }
    func testSelectingCarUpdatesDetails() throws {
        let carButton = app.buttons["Carrera 4S"]
        XCTAssertTrue(carButton.exists, "Car button should exist")
        carButton.tap()
        let launchTimeValue = app.staticTexts["3.9s"]
        XCTAssertTrue(launchTimeValue.exists, "Launch time value label should be displayed")
        XCTAssertEqual(launchTimeValue.label, "3.9s", "Launch time should be updated correctly")
    }
}
