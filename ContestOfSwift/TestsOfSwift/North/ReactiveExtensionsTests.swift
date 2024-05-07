//
//  ReactiveExtensionsTests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 5/6/24.
//

import XCTest

final class ReactiveExtensionsTests: XCTestCase {

    @MainActor
    func testSecondsCounter() {
        var lastSecond = 0
        let expectation = XCTestExpectation(description: "timer completed")

        let cancellable = 21.secondsCounter()
            .sink { _ in expectation.fulfill() } receiveValue: { lastSecond = $0 }

        wait(for: [expectation], timeout: 22.0)
        XCTAssertEqual(lastSecond, 21)
        cancellable.cancel()
    }

}
