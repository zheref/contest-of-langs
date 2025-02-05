//
//  Challenge15Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/02/25.
//

import XCTest

final class Challenge15Tests: XCTestCase {

    func testIsArmstrong() {
        XCTAssertTrue(Challenge15.isArmstrong(0))
        XCTAssertTrue(Challenge15.isArmstrong(1))
        XCTAssertTrue(Challenge15.isArmstrong(2))
        XCTAssertTrue(Challenge15.isArmstrong(3))
        XCTAssertTrue(Challenge15.isArmstrong(153))
        XCTAssertTrue(Challenge15.isArmstrong(371))
        XCTAssertTrue(Challenge15.isArmstrong(1634))
    }
    
    func testIsNotArmstrong() {
        XCTAssertFalse(Challenge15.isArmstrong(10))
        XCTAssertFalse(Challenge15.isArmstrong(21))
        XCTAssertFalse(Challenge15.isArmstrong(45))
        XCTAssertFalse(Challenge15.isArmstrong(93))
        XCTAssertFalse(Challenge15.isArmstrong(221))
        XCTAssertFalse(Challenge15.isArmstrong(372))
        XCTAssertFalse(Challenge15.isArmstrong(450))
        XCTAssertFalse(Challenge15.isArmstrong(1700))
    }

}
