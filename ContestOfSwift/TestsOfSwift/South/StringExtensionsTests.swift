//
//  StringExtensionsTests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/5/24.
//

import XCTest

final class StringExtensionsTests: XCTestCase {

    func testIsAnagramOf() {
        XCTAssertTrue("listen".isAnagram(of: "silent"))
        XCTAssertTrue("triangle".isAnagram(of: "integral"))
        XCTAssertTrue("amor".isAnagram(of: "roma"))
        XCTAssertTrue("sergio".isAnagram(of: "riesgo"))
        XCTAssertTrue("delira".isAnagram(of: "lidera"))
        XCTAssertTrue("ballena".isAnagram(of: "llenaba"))
        XCTAssertTrue("valora".isAnagram(of: "Alvaro"))
        XCTAssertTrue("PRAGA".isAnagram(of: "pagar"))

        // ?
        XCTAssertTrue("amor".isAnagram(of: "amor"))

        XCTAssertFalse("edwin".isAnagram(of: "winned"))
        XCTAssertFalse("obito".isAnagram(of: "tobi"))
        XCTAssertFalse("sasuke".isAnagram(of: "itachi"))
        XCTAssertFalse("maria".isAnagram(of: "rima"))
        XCTAssertFalse("alborota".isAnagram(of: "lobo rata"))
    }

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

    func testInverted() {
        XCTAssertEqual("Hello".inverted, "olleH")
        XCTAssertEqual("Hello World".inverted, "dlroW olleH")
        XCTAssertEqual("T".inverted, "T")
        XCTAssertEqual("".inverted, "")
        XCTAssertEqual("Hola mundo".inverted, "odnum aloH")
        XCTAssertEqual("Exotic".inverted, "citoxE")
        XCTAssertEqual("Galaxy".inverted, "yxalaG")
        XCTAssertEqual("Nanoleaf".inverted, "faelonaN")
        XCTAssertEqual("kayak".inverted, "kayak")
        XCTAssertEqual("deified".inverted, "deified")
    }

}
