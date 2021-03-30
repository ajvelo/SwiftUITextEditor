//
//  SwiftUITextEditorTests.swift
//  SwiftUITextEditorTests
//
//  Created by Andreas Velounias on 29/03/2021.
//

import XCTest

@testable import SwiftUITextEditor

class WordCountTests: XCTestCase {

    func testSuccessfulWordCount() {
        XCTAssertEqual("this should be 5 words".wordCount(), 5)
    }
    
    func testSuccessfulWordCountWithParagraph() {
        let paragraph =
        """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultrices turpis a lectus auctor, vitae vehicula odio finibus. Curabitur gravida mollis dui, tempor fringilla elit dignissim et. Integer porta egestas justo, at egestas libero condimentum ut. Aenean auctor sodales varius. Mauris vitae dolor porta, dignissim orci sed, tempus ante. Aenean et pretium sem, pretium varius enim. Quisque rutrum aliquam ante, eu efficitur arcu. Mauris suscipit venenatis metus id pretium. Nullam tellus mi, aliquet sed ipsum sit amet, venenatis commodo leo. Nam dui nulla, suscipit eu euismod vitae, fermentum non felis. Aliquam erat volutpat.
        """
        XCTAssertEqual(paragraph.wordCount(), 93)
    }
    
    func testWordCountIsCorrectWithEmptyString() {
        XCTAssertEqual("".wordCount(), 0)
    }

}
