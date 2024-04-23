//
//  Challenge1Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/23/24.
//

import XCTest

final class Challenge1Tests: XCTestCase {

    func testIsNumberMultipleOf() {
        XCTAssertTrue(
            Challenge1.isNumber(1, multipleOf: 1)
        )
        XCTAssertTrue(
            Challenge1.isNumber(2, multipleOf: 2)
        )
        XCTAssertTrue(
            Challenge1.isNumber(6, multipleOf: 2)
        )
        XCTAssertTrue(
            Challenge1.isNumber(20, multipleOf: 5)
        )
        XCTAssertTrue(
            Challenge1.isNumber(15, multipleOf: 5)
        )
        XCTAssertTrue(
            Challenge1.isNumber(21, multipleOf: 7)
        )
        XCTAssertTrue(
            Challenge1.isNumber(72, multipleOf: 4)
        )
        XCTAssertTrue(
            Challenge1.isNumber(81, multipleOf: 9)
        )
        XCTAssertTrue(
            Challenge1.isNumber(90, multipleOf: 10)
        )

        XCTAssertFalse(
            Challenge1.isNumber(3, multipleOf: 2)
        )
        XCTAssertFalse(
            Challenge1.isNumber(5, multipleOf: 2)
        )
        XCTAssertFalse(
            Challenge1.isNumber(7, multipleOf: 2)
        )
        XCTAssertFalse(
            Challenge1.isNumber(21, multipleOf: 5)
        )
        XCTAssertFalse(
            Challenge1.isNumber(72, multipleOf: 5)
        )
        XCTAssertFalse(
            Challenge1.isNumber(81, multipleOf: 2)
        )
        XCTAssertFalse(
            Challenge1.isNumber(90, multipleOf: 8)
        )
    }

}
