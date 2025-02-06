//
//  Challenge18Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 6/02/25.
//

import XCTest

final class Challenge18Tests: XCTestCase {

    func testEvaluateRacePerformance() {
        XCTAssertTrue(
            Challenge18.evaluateRacePerformance(
                using: ["run", "run", "jump", "run", "jump", "run", "run"],
                on: "__|_|__"
            )
        )
        
        XCTAssertFalse(
            Challenge18.evaluateRacePerformance(
                using: ["run", "run", "jump", "jump", "run", "jump", "run", "run"],
                on: "___|_|__"
            )
        )
        
        XCTAssertFalse(
            Challenge18.evaluateRacePerformance(
                using: ["jump", "run", "jump", "jump", "run", "jump", "run", "run"],
                on: "___|_|__"
            )
        )
        
        XCTAssertTrue(
            Challenge18.evaluateRacePerformance(
                using: ["jump", "run", "run", "jump", "run", "jump", "run", "run", "jump", "jump"],
                on: "|__|_|__||"
            )
        )
        
        XCTAssertTrue(
            Challenge18.evaluateRacePerformance(
                using: ["JUMP", "run", "run", "jump", "RUN", "jump", "run", "Run", "jump", "Jump", "rUN"],
                on: "|__|_|__||_"
            )
        )
    }

}
