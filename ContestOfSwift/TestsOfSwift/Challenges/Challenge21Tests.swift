//
//  Challenge21Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 2/9/25.
//

import XCTest

final class Challenge21Tests: XCTestCase {

    func testSumAndWait() async {
        let startTime = Date.now
        let result = await Challenge21.sumAndWait(5, 10, waiting: 3)
        let elapsedTime = Date.now.timeIntervalSince(startTime)
        
        XCTAssertEqual(result, 15)
        XCTAssert(elapsedTime >= 3, "Expected elapsed time to be at least 3 seconds")
    }
    
    func testSumAndWait_longWait() async {
        let startTime = Date.now
        let result = await Challenge21.sumAndWait(21, 70, waiting: 10)
        let elapsedTime = Date.now.timeIntervalSince(startTime)
        
        XCTAssertEqual(result, 91)
        XCTAssert(elapsedTime >= 10, "Expected elapsed time to be at least 3 seconds")
    }

}
