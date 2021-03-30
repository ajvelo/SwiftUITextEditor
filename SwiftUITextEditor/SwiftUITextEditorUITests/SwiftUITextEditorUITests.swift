//
//  SwiftUITextEditorUITests.swift
//  SwiftUITextEditorUITests
//
//  Created by Andreas Velounias on 30/03/2021.
//

import XCTest

@testable import SwiftUITextEditor

class SwiftUITextEditorUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        app.launch()
    }

    func testTextEditorIsInitiallyEmpty() {
        let textLabel = app.staticTexts["wordcount"]
        XCTAssertEqual(textLabel.label, "0 words")
    }
    
    func testTextEditorIsPopulatedWithTextWhenButtonPressed() {
        let button = app.buttons["generateparagraphbtn"]
        let textLabel = app.staticTexts["wordcount"]
        
        button.tap()
        
        XCTAssertNotEqual(textLabel.label, "0 words")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
