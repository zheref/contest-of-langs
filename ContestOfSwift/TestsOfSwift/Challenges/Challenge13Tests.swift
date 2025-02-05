//
//  Challenge13Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/02/25.
//

import XCTest

final class Challenge13Tests: XCTestCase {

    func testIsPalindrome() {
        XCTAssertTrue(Challenge13.isPalindrome("racecar"))
        XCTAssertFalse(Challenge13.isPalindrome("hello"))
        XCTAssertTrue(Challenge13.isPalindrome("12321"))
        XCTAssertFalse(Challenge13.isPalindrome("12345"))
        XCTAssertTrue(Challenge13.isPalindrome("Anna"))
        XCTAssertTrue(Challenge13.isPalindrome("A man, a plan, a canal: Panama!"))
        XCTAssertFalse(Challenge13.isPalindrome("Reloj"))
        XCTAssertTrue(Challenge13.isPalindrome("1001"))
        XCTAssertTrue(Challenge13.isPalindrome("civic"))
        XCTAssertFalse(Challenge13.isPalindrome("abcd"))
        XCTAssertTrue(Challenge13.isPalindrome("11"))
        XCTAssertFalse(Challenge13.isPalindrome("a fan and a glass"))
        XCTAssertTrue(Challenge13.isPalindrome("Radar"))
        XCTAssertTrue(Challenge13.isPalindrome("rotator"))
        XCTAssertFalse(Challenge13.isPalindrome("tablet"))
    }

}
