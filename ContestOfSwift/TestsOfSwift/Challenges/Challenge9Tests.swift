//
//  Challenge9Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/29/24.
//

import XCTest

final class Challenge9Tests: XCTestCase {

    func testBinaryConversion() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 2, decimal: 10), "1010")
    }

    func testBinaryZero() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 2, decimal: 0), "0")
    }

    func testBinaryPowerOfTwo() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 2, decimal: 16), "10000")
    }

    func testBinaryEvenNumber() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 2, decimal: 18), "10010")
    }

    func testBinaryOddNumber() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 2, decimal: 17), "10001")
    }

    func testBinaryNegativeNumber() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 2, decimal: -10), "-1010")
    }

    func testOctalConversion() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 8, decimal: 10), "12")
    }

    func testOctalZero() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 8, decimal: 0), "0")
    }

    func testOctalSmallNumber() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 8, decimal: 7), "7")
    }

    func testOctalLargeNumber() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 8, decimal: 100), "144")
    }

    func testOctalExactMatch() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 8, decimal: 64), "100")
    }

    func testOctalNegativeNumber() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 8, decimal: -8), "-10")
    }

    func testHexadecimalConversion() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 16, decimal: 255), "FF")
    }

    func testHexZero() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 16, decimal: 0), "0")
    }

    func testHexSpecificCharacters() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 16, decimal: 175), "AF")
    }

    func testHexLargeNumber() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 16, decimal: 1023), "3FF")
    }

    func testHexExactBoundary() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 16, decimal: 256), "100")
    }

    func testHexNegativeNumber() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 16, decimal: -255), "-FF")
    }

    func testNonStandardBaseConversion() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 3, decimal: 10), "101")
    }

    func testZeroConversion() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 5, decimal: 0), "0")
    }

    func testNegativeNumberConversion() {
        // This test assumes your function is designed to handle negatives.
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 2, decimal: -10), "-1010")
    }

    func testInvalidBase() {
        // This test assumes your function should return an empty string or similar for invalid bases.
        XCTAssertThrowsError(try Challenge9.decimalToSystem(usingBase: 1, decimal: 10), "")
    }

    func testLargeNumberConversion() {
        XCTAssertEqual(try Challenge9.decimalToSystem(usingBase: 2, decimal: 1024), "10000000000")
    }

}
