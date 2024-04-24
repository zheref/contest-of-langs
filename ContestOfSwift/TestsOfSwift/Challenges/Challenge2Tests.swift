//
//  Challenge2Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/23/24.
//

import XCTest

final class Challenge2Tests: XCTestCase {

    func testIsWordAnagramOf() {

        XCTAssertTrue(
            isWord("listen", anagramOf: "silent")
        )
        XCTAssertTrue(
            isWord("triangle", anagramOf: "integral")
        )
        XCTAssertTrue(
            isWord("amor", anagramOf: "roma")
        )
        XCTAssertTrue(
            isWord("sergio", anagramOf: "riesgo")
        )
        XCTAssertTrue(
            isWord("delira", anagramOf: "lidera")
        )
        XCTAssertTrue(
            isWord("ballena", anagramOf: "llenaba")
        )
        XCTAssertTrue(
            isWord("valora", anagramOf: "Alvaro")
        )
        XCTAssertTrue(
            isWord("PRAGA", anagramOf: "pagar")
        )

        XCTAssertFalse(
            isWord("amor", anagramOf: "amor")
        )
        XCTAssertFalse(
            isWord("edwin", anagramOf: "winned")
        )
        XCTAssertFalse(
            isWord("obito", anagramOf: "tobi")
        )
        XCTAssertFalse(
            isWord("sasuke", anagramOf: "itachi")
        )
        XCTAssertFalse(
            isWord("maria", anagramOf: "rima")
        )
        XCTAssertFalse(
            isWord("alborota", anagramOf: "lobo rata")
        )
    }

}
