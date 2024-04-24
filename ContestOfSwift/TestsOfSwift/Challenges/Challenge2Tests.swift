//
//  Challenge2Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/23/24.
//

import XCTest

final class Challenge2Tests: XCTestCase {

    func testIsWordAnagramOf() {
        XCTAssertFalse(
            isWord("amor", anagramOf: "amor")
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
            isWord("valora", anagramOf: "alvaro")
        )
        XCTAssertTrue(
            isWord("praga", anagramOf: "pagar")
        )


        XCTAssertFalse(
            isWord("edwin", anagramOf: "winned")
        )
        XCTAssertFalse(
            isWord("obito", anagramOf: "tobi")
        )
        XCTAssertFalse(
            isWord("maria", anagramOf: "rima")
        )
        XCTAssertFalse(
            isWord("alborota", anagramOf: "lobo rata")
        )
    }

}
