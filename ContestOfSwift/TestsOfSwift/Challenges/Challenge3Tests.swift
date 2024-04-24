//
//  Challenge3Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/24/24.
//

import XCTest

final class Challenge3Tests: XCTestCase {

    func testFibonacci() {
        let fibonacciSequence = Challenge3.fibonacci()
        
        XCTAssertTrue(
            fibonacciSequence.contains([0, 1, 1, 2, 3, 5, 8, 13])
        )
    }

}
