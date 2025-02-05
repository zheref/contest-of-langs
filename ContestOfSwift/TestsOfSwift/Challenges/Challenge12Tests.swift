//
//  Challenge12Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/02/25.
//

import XCTest

final class Challenge12Tests: XCTestCase {

    func testOuterRim_exclusive() {
        let result = Challenge12.outerRim(str1: "phone", str2: "mug")
        XCTAssertEqual(result.out1, "phone")
        XCTAssertEqual(result.out2, "mug")
    }
    
    func testOuterRim_someShared() {
        let result = Challenge12.outerRim(str1: "plant", str2: "fan")
        XCTAssertEqual(result.out1, "plt")
        XCTAssertEqual(result.out2, "f")
    }
    
    func testOuterRim_someSharedAndSomeNot() {
        let result = Challenge12.outerRim(str1: "apple", str2: "banana")
        XCTAssertEqual(result.out1, "pple")
        XCTAssertEqual(result.out2, "bnn")
    }
    
    func testOuterRim_anagram() {
        let result = Challenge12.outerRim(str1: "disney", str2: "sidney")
        XCTAssertEqual(result.out1, "")
        XCTAssertEqual(result.out2, "")
    }
    
    func testOuterRim_empty() {
        let result = Challenge12.outerRim(str1: "", str2: "")
        XCTAssertEqual(result.out1, "")
        XCTAssertEqual(result.out2, "")
    }
    
    func testOuterRim_oneEmpty() {
        let result = Challenge12.outerRim(str1: "hello", str2: "")
        XCTAssertEqual(result.out1, "hello")
        XCTAssertEqual(result.out2, "")
    }
    
    func testOuterRim_oneEmptyOneShared() {
        let result = Challenge12.outerRim(str1: "hello", str2: "world")
        XCTAssertEqual(result.out1, "he")
        XCTAssertEqual(result.out2, "wrd")
    }

}
