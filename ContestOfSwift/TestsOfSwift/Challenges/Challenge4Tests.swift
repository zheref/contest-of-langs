//
//  Challenge4Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/24/24.
//

import XCTest

final class Challenge4Tests: XCTestCase {

    func testIsPrime() {
        XCTAssertTrue(Challenge4.isPrime(2))
        XCTAssertTrue(Challenge4.isPrime(3))
        XCTAssertTrue(Challenge4.isPrime(5))
        XCTAssertTrue(Challenge4.isPrime(7))
        XCTAssertTrue(Challenge4.isPrime(23))
        XCTAssertTrue(Challenge4.isPrime(31))
        XCTAssertTrue(Challenge4.isPrime(73))

        XCTAssertFalse(Challenge4.isPrime(1))
        XCTAssertFalse(Challenge4.isPrime(4))
        XCTAssertFalse(Challenge4.isPrime(9))
        XCTAssertFalse(Challenge4.isPrime(15))
        XCTAssertFalse(Challenge4.isPrime(21))
        XCTAssertFalse(Challenge4.isPrime(27))
        XCTAssertFalse(Challenge4.isPrime(30))
    }

}
