//
//  Challenge17Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 6/02/25.
//

import XCTest

final class Challenge17Tests: XCTestCase {

    func testCapitalize() {
        XCTAssertEqual(Challenge17.capitalize(str: "hola mundo"), "Hola Mundo")
        XCTAssertEqual(Challenge17.capitalize(str: ""), "")
        XCTAssertEqual(Challenge17.capitalize(str: " "), "")
        XCTAssertEqual(Challenge17.capitalize(str: "Something Already Capitalized"),
                       "Something Already Capitalized")
        XCTAssertEqual(Challenge17.capitalize(str: "First word capitalized"),
                       "First Word Capitalized")
        XCTAssertEqual(Challenge17.capitalize(str: "last word Capitalized"),
                       "Last Word Capitalized")
        XCTAssertEqual(Challenge17.capitalize(str: "Some Words capitalized"),
                       "Some Words Capitalized")
        XCTAssertEqual(Challenge17.capitalize(str: "12345"), "12345")
        XCTAssertEqual(Challenge17.capitalize(str: "12345abc"), "12345abc")
        XCTAssertEqual(Challenge17.capitalize(str: "12345abc123"), "12345abc123")
        
    }

}
