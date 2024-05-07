//
//  ConcurrentExtensionsTests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/6/24.
//

import XCTest

final class ConcurrentExtensionsTests: XCTestCase {

    @MainActor
    func testSecondsCount() async {
        var secondsCounted = 0

        for await second in 21.secondsCount() {
            secondsCounted = second
        }

        XCTAssertEqual(secondsCounted, 21)
    }

}
