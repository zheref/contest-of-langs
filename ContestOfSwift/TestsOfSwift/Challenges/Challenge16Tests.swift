//
//  Challenge16Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/02/25.
//

import XCTest

final class Challenge16Tests: XCTestCase {

    func testDaysBetween() {
        // Same
        try! XCTAssertEqual(Challenge16.daysBetween("18/02/2025", "18/02/2025"), 0)
        
        // Normal
        try! XCTAssertEqual(Challenge16.daysBetween("18/02/2025", "19/02/2025"), 1)
        try! XCTAssertEqual(Challenge16.daysBetween("1/01/2025", "31/12/2025"), 364)
        try! XCTAssertEqual(Challenge16.daysBetween("9/2/2025", "30/7/2026"), 536)
        try! XCTAssertEqual(Challenge16.daysBetween("9/9/2025", "9/9/2026"), 365)
        try! XCTAssertEqual(Challenge16.daysBetween("1/10/2025", "1/10/2028"), 1096)
        
        // Inverted
        try! XCTAssertEqual(Challenge16.daysBetween("19/02/2025", "18/02/2025"), 1)
        try! XCTAssertEqual(Challenge16.daysBetween("31/12/2025", "1/01/2025"), 364)
        try! XCTAssertEqual(Challenge16.daysBetween("30/7/2026", "9/2/2025"), 536)
        try! XCTAssertEqual(Challenge16.daysBetween("9/9/2026", "9/9/2025"), 365)
        try! XCTAssertEqual(Challenge16.daysBetween("1/10/2028", "1/10/2025"), 1096)
        
        // Failures
        XCTAssertThrowsError(try Challenge16.daysBetween("09-02-2025", "18/02/2025"))
        XCTAssertThrowsError(try Challenge16.daysBetween("18/02/2025", "09-02-2025"))
        XCTAssertThrowsError(try Challenge16.daysBetween("18-02-2025", "09-02-2025"))
        XCTAssertThrowsError(try Challenge16.daysBetween("18 02 2025", "09 02 2025"))
        XCTAssertThrowsError(try Challenge16.daysBetween("February 18, 2025", "31/12/2025"))
        XCTAssertThrowsError(try Challenge16.daysBetween("March 18, 2025", "October 20, 2025"))
    }

}
