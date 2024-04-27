//
//  Challenge5Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 4/26/24.
//

import Foundation
import XCTest

final class Challenge5Tests: XCTestCase {
    
    func testTriangle() {
        let triangle1 = Challenge5.Triangle(base: 20, height: 20)
        XCTAssertEqual(
            triangle1.getArea(),
            200
        )
        XCTAssertTrue(triangle1.isEquilateral)
        XCTAssertFalse(triangle1.isRectangular)
        XCTAssertTrue(triangle1.isIsosceles)

        let triangle2 = Challenge5.Triangle(base: 30, height: 30, firstAngle: 90)
        XCTAssertEqual(
            triangle2.getArea(),
            450
        )
        XCTAssertTrue(triangle2.isRectangular)
        XCTAssertFalse(triangle2.isEquilateral)
        XCTAssertTrue(triangle2.isIsosceles)

        let triangle3 = Challenge5.Triangle(base: 30, height: 20, firstAngle: 30)
        XCTAssertEqual(
            triangle3.getArea(),
            300
        )
        XCTAssertFalse(triangle3.isRectangular)
        XCTAssertFalse(triangle3.isEquilateral)
        XCTAssertFalse(triangle3.isIsosceles)
    }

    func testRectangle() {
        let rectangle1 = Challenge5.Rectangle(length: 30, width: 20)
        XCTAssertEqual(
            rectangle1.getArea(),
            600
        )
        XCTAssertFalse(rectangle1.isEquilateral)
        XCTAssertFalse(rectangle1.isSquare)

        let rectangle2 = Challenge5.Rectangle(length: 30)
        XCTAssertEqual(
            rectangle2.getArea(),
            900
        )
        XCTAssertTrue(rectangle2.isEquilateral)
        XCTAssertTrue(rectangle2.isSquare)
    }

}
