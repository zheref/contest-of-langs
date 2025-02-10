//
//  ArrayExtensionsTests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 2/9/25.
//

import XCTest

final class ArrayExtensionsTests: XCTestCase {

    func testTranspose_perfectSquareMatrix() {
        let originalMatrix = [
            [1, 5, 7],
            [2, 4, 8],
            [3, 6, 9]
        ]
        let transposed = originalMatrix.transposed()
        XCTAssertEqual(transposed[0], [1, 2, 3])
        XCTAssertEqual(transposed[1], [5, 4, 6])
        XCTAssertEqual(transposed[2], [7, 8, 9])
        XCTAssertEqual(transposed.count, originalMatrix.count)
    }
    
    func testTranspose_PerfectNotSquareMatrix() {
        let originalMatrix = [
            [0, 6, 1],
            [1, 2, 4],
            [9, 4, 7],
            [3, 5, 8],
            [7, 9, 0]
        ]
        let transposed = originalMatrix.transposed()
        XCTAssertEqual(transposed[0], [0, 1, 9, 3, 7])
        XCTAssertEqual(transposed[1], [6, 2, 4, 5, 9])
        XCTAssertEqual(transposed[2], [1, 4, 7, 8, 0])
        XCTAssertEqual(transposed.count, 3)
    }
    
    func testTranspose_InperfectNotSquareMatrix() {
        let originalMatrix = [
            [0, 6, 1, 5],
            [1, 2, 4],
            [9, 7],
            [3],
            [7, 9, 8]
        ]
        let transposed = originalMatrix.transposed()
        XCTAssertEqual(transposed[0], [0, 1, 9, 3, 7])
        XCTAssertEqual(transposed[1], [6, 2, 7, 9])
        XCTAssertEqual(transposed[2], [1, 4, 8])
        XCTAssertEqual(transposed[3], [5])
        XCTAssertEqual(transposed.count, 4)
    }
    
    func testDiagonalElements_PerfectSquareMatrix() {
        let originalMatrix = [
            [0, 6, 1],
            [1, 2, 4],
            [9, 4, 7]
        ]
        let diagonalElements = originalMatrix.diagonal
        XCTAssertEqual(diagonalElements, [0, 2, 7])
    }
    
    func testDiagonalElements_PerfectNotSquareMatrix() {
        let originalMatrix = [
            [0, 6, 1],
            [1, 2, 4],
            [9, 4, 7],
            [5, 2, 8],
            [1, 4, 3]
        ]
        XCTAssertEqual(originalMatrix.diagonal, [0, 2, 7])
    }
    
    func testDiagonalElements_InperfectMatrix() {
        let originalMatrix = [
            [0, 6, 1, 5],
            [1, 2, 4],
            [9, 7],
            [3]
        ]
        XCTAssertEqual(originalMatrix.diagonal, [0, 2])
    }

}
