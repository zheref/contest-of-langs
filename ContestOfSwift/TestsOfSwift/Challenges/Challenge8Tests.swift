//
//  Challenge8Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/29/24.
//

import XCTest

final class Challenge8Tests: XCTestCase {

    func testCountInstances_withMultipleOccurrences() {
        let words = ["apple", "banana", "Apple", "orange", "aPPle"]
        let count = Challenge8.countInstances(of: "apple", in: words)
        XCTAssertEqual(count, 3, "The count of 'apple' should be 3, ignoring case.")
    }

    func testCountInstances_withNoOccurrences() {
        let words = ["apple", "banana", "grape"]
        let count = Challenge8.countInstances(of: "orange", in: words)
        XCTAssertEqual(count, 0, "The count of 'orange' should be 0.")
    }

    func testCountInstances_caseInsensitivity() {
        let words = ["apple", "Apple", "APPLE"]
        let count = Challenge8.countInstances(of: "apple", in: words)
        XCTAssertEqual(count, 3, "The count of 'apple' should be 3, ignoring case differences.")
    }

    func testCountInstances_emptyArray() {
        let words: [String] = []
        let count = Challenge8.countInstances(of: "apple", in: words)
        XCTAssertEqual(count, 0, "The count should be 0 for an empty array.")
    }

    func testCountInstances_emptyString() {
        let words = ["apple", "banana", "", "", "grape"]
        let count = Challenge8.countInstances(of: "", in: words)
        XCTAssertEqual(count, 0, "The count of an empty string should be 0.")
    }

    func testCountInstances_specialCharacters() {
        let words = ["apple!", "banana?", "Apple!", "orange."]
        let count = Challenge8.countInstances(of: "apple", in: words)
        XCTAssertEqual(count, 0, "The count of 'apple' should be 0, ignoring case.")
    }

    func testCountWords_basicFunctionality() {
        let text = "Hello, hello? HELLO! Are there, are there any echoes?"
        let counts = Challenge8.countWords(in: text)
        XCTAssertEqual(counts, ["hello": 3, "are": 2, "there": 2, "any": 1, "echoes": 1], "Word counts should match expected values, ignoring case and punctuation.")
    }

    func testCountWords_emptyString() {
        let text = ""
        let counts = Challenge8.countWords(in: text)
        XCTAssertTrue(counts.isEmpty, "The result should be an empty dictionary for an empty string.")
    }

    func testCountWords_caseInsensitivity() {
        let text = "Swift, swift, SWIFT!"
        let counts = Challenge8.countWords(in: text)
        XCTAssertEqual(counts, ["swift": 3], "The count of 'swift' should be 3, ignoring case.")
    }

    func testCountWords_ignorePunctuation() {
        let text = "Well... well, well; well!"
        let counts = Challenge8.countWords(in: text)
        XCTAssertEqual(counts, ["well": 4], "The count of 'well' should be 4, ignoring all punctuation.")
    }

    func testCountWords_withNumbersAndSpecialCharacters() {
        let text = "Testing 123, testing 123! Does it count 123? Yes, it counts!"
        let counts = Challenge8.countWords(in: text)
        XCTAssertEqual(counts, ["testing": 2, "does": 1, "it": 2, "count": 1, "counts": 1, "yes": 1], "The count should ignore numbers and special characters, except for apostrophes in words.")
    }

    func testCountWords_singleWordRepetition() {
        let text = "Test test test test"
        let counts = Challenge8.countWords(in: text)
        XCTAssertEqual(counts, ["test": 4], "The count of 'test' should be 4.")
    }

}
