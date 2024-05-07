//
//  NumericExtensionsTests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/5/24.
//

import XCTest

final class NumericExtensionsTests: XCTestCase {

    func testFibonaccis() {
        XCTAssertNil((-1).fibonaccis)
        XCTAssertEqual(0.fibonaccis, [])
        XCTAssertEqual(1.fibonaccis, [0])
        XCTAssertEqual(2.fibonaccis, [0, 1])
        XCTAssertEqual(3.fibonaccis, [0, 1, 1])

        XCTAssertEqual(7.fibonaccis, [0, 1, 1, 2, 3, 5, 8])

        let expected50 = [
            0, 1, 1, 2, 3, 5, 8, 13, 21, 34,
            55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181,
            6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229,
            832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169,
            63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170,
            1836311903, 2971215073, 4807526976, 7778742049
        ]
        XCTAssertEqual(50.fibonaccis, expected50)
    }

    func testIsPrime() {
        XCTAssertTrue(2.isPrime)
        XCTAssertTrue(3.isPrime)
        XCTAssertTrue(5.isPrime)
        XCTAssertTrue(7.isPrime)
        XCTAssertTrue(23.isPrime)
        XCTAssertTrue(31.isPrime)
        XCTAssertTrue(73.isPrime)

        XCTAssertFalse(1.isPrime)
        XCTAssertFalse(4.isPrime)
        XCTAssertFalse(9.isPrime)
        XCTAssertFalse(15.isPrime)
        XCTAssertFalse(21.isPrime)
        XCTAssertFalse(27.isPrime)
        XCTAssertFalse(30.isPrime)
    }

    func testGreatCommonDivisor() {
        XCTAssertEqual(15.greatestCommonDivisor(with: 5), 5)
        XCTAssertEqual(17.greatestCommonDivisor(with: 4), 1)
        XCTAssertEqual(0.greatestCommonDivisor(with: 20), 20)
        XCTAssertEqual(34.greatestCommonDivisor(with: 0), 34)
        XCTAssertEqual(0.greatestCommonDivisor(with: 0), 0)
        XCTAssertEqual((-10).greatestCommonDivisor(with: 5), 5)
        XCTAssertEqual((-25).greatestCommonDivisor(with: -5), 5)
        XCTAssertEqual(123456.greatestCommonDivisor(with: 7890), 6)
    }

}
