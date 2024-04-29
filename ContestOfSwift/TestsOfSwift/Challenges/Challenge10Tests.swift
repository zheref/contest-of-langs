//
//  Challenge10Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/29/24.
//

import Foundation

import XCTest

final class Challenge10Tests: XCTestCase {

    // Natural to Morse

    func testTransformToMorseWithNormalString() {
        let result = Challenge10.transformToMorse(text: "hello")
        let expected = ".... . .—.. .—.. ———"
        XCTAssertEqual(result, expected)
    }

    func testTransformToMorseWithEmptyString() {
        let result = Challenge10.transformToMorse(text: "")
        let expected = ""
        XCTAssertEqual(result, expected)
    }

    func testTransformToMorseWithNumbers() {
        let result = Challenge10.transformToMorse(text: "123")
        let expected = ".———— ..——— ...——"  // Assuming your Morse code function handles numbers
        XCTAssertEqual(result, expected)
    }

    func testTransformToMorseWithSpecialCharacters() {
        let result = Challenge10.transformToMorse(text: "hello!")
        let expected = ".... . .—.. .—.. ——— —.—.——"  // Assuming '!' translates to '—.—.——'
        XCTAssertEqual(result, expected)
    }

    func testTransformToMorseWithSpaces() {
        let result = Challenge10.transformToMorse(text: "hi there")
        let expected = ".... ..  — .... . .—. ."
        XCTAssertEqual(result, expected)
    }

    // Morse to Natural

    func testTransformToNaturalWithNormalString() {
        let result = Challenge10.transformFromMorse(".... . .—.. .—.. ———")
        let expected = "HELLO"
        XCTAssertEqual(result, expected)
    }

    func testTransformToNaturalWithEmptyString() {
        let result = Challenge10.transformFromMorse("")
        let expected = ""
        XCTAssertEqual(result, expected)
    }

    func testTransformToNaturalWithNumbers() {
        let result = Challenge10.transformFromMorse(".———— ..——— ...——")
        let expected = "123" // Assuming your Morse code function handles numbers
        XCTAssertEqual(result, expected)
    }

    func testTransformToNaturalWithSpecialCharacters() {
        let result = Challenge10.transformFromMorse(".... . .—.. .—.. ——— —.—.——")
        let expected = "HELLO!" // Assuming '!' translates to '—.—.——'
        XCTAssertEqual(result, expected)
    }

    func testTransformToNaturalWithSpaces() {
        let result = Challenge10.transformFromMorse(".... ..  — .... . .—. .")
        let expected = "HI THERE"
        XCTAssertEqual(result, expected)
    }

}
