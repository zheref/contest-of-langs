//
//  Challenge7Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/29/24.
//

import XCTest

final class Challenge7Tests: XCTestCase {

    func testInvert() {
        XCTAssertEqual(Challenge7.invert(string: "Hola mundo"), "odnum aloH")
        XCTAssertEqual(Challenge7.invert(string: "Exotic"), "citoxE")
        XCTAssertEqual(Challenge7.invert(string: "Galaxy"), "yxalaG")
        XCTAssertEqual(Challenge7.invert(string: "Nanoleaf"), "faelonaN")
        XCTAssertEqual(Challenge7.invert(string: "kayak"), "kayak")
        XCTAssertEqual(Challenge7.invert(string: "deified"), "deified")
    }

}
