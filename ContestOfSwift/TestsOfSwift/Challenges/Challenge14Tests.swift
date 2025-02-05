//
//  Challenge14Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/02/25.
//

import XCTest

final class Challenge14Tests: XCTestCase {

    func testFactorial() {
        XCTAssertEqual(Challenge14.factorial(0), 1)
        XCTAssertEqual(Challenge14.factorial(1), 1)
        XCTAssertEqual(Challenge14.factorial(2), 2)
        XCTAssertEqual(Challenge14.factorial(3), 6)
        XCTAssertEqual(Challenge14.factorial(5), 120)
        XCTAssertEqual(Challenge14.factorial(7), 5040)
        XCTAssertEqual(Challenge14.factorial(10), 3628800)
    }

}
