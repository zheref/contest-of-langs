//
//  StringExtensionsTests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/5/24.
//

import XCTest

final class StringExtensionsTests: XCTestCase {

    func testIsBalanced() {
        XCTAssertFalse("{a + b [c] * (2x2)}}}}".isBalanced)
        XCTAssertTrue("{ [ a * ( c + d ) ] - 5 }".isBalanced)
        XCTAssertFalse("{ a * ( c + d ) ] - 5 }".isBalanced)
        XCTAssertFalse("{a^4 + (((ax4)}".isBalanced)
        XCTAssertFalse("{ ] a * ( c + d ) + ( 2 - 3 )[ - 5 }".isBalanced)
        XCTAssertFalse("{{{{{{(}}}}}}".isBalanced)
        XCTAssertFalse("(a".isBalanced)
        XCTAssertTrue("".isBalanced)
        XCTAssertTrue("<{{{()()}}}>".isBalanced)
    }

}
