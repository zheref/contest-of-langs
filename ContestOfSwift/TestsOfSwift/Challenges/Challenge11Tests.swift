//
//  Challenge11Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/02/25.
//

import XCTest

final class Challenge11Tests: XCTestCase {

    func testIsBalanced() {
        XCTAssertTrue(Challenge11.isBalanced(text: "{ [ a * ( c + d ) ] - 5 }"))
        XCTAssertFalse(Challenge11.isBalanced(text: "{ a * ( c + d ) ] - 5 }"))
        XCTAssertTrue(Challenge11.isBalanced(text: "< b > ( c + d ) [ e * 5 - { f + b } ]"))
        XCTAssertFalse(Challenge11.isBalanced(text: "< < > ( 5 + y ) + { 8 - 1 }"))
    }

}
