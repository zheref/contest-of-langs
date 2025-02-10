//
//  Challenge20Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 2/9/25.
//

import XCTest

final class Challenge20Tests: XCTestCase {

    func testConvertToMilliseconds() {
        XCTAssertEqual(
            Challenge20.convertToMilliseconds(days: 0, hours: 0, minutes: 0, seconds: 1),
            1000
        )
        XCTAssertEqual(
            Challenge20.convertToMilliseconds(days: 0, hours: 0, minutes: 60, seconds: 3),
            3_603_000
        )
        XCTAssertEqual(
            Challenge20.convertToMilliseconds(days: 0, hours: 4, minutes: 60, seconds: 21),
            18_021_000
        )
        XCTAssertEqual(
            Challenge20.convertToMilliseconds(days: 2, hours: 8, minutes: 45, seconds: 30),
            204_330_000
        )
        XCTAssertEqual(
            Challenge20.convertToMilliseconds(days: 0, hours: 8, minutes: 0, seconds: 30),
            28_830_000
        )
    }

}
