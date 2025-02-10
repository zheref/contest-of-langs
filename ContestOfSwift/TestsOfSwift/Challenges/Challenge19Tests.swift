//
//  Challenge19Tests.swift
//  TestsOfSwift
//
//  Created by Sergio Daniel on 2/9/25.
//

import XCTest

final class Challenge19Tests: XCTestCase {

    func testEvaluateTikTakToeGame_caseO() {
        let game: [[Character]] = [
            ["O", "X", "X"],
            ["X", "O", "O"],
            ["X", "X", "O"]
        ]
        XCTAssertEqual(try! Challenge19.evaluateTikTakToeGame(game), "O")
    }
    
    func testEvaluateTikTakToeGame_caseX() {
        let game: [[Character]] = [
            ["O", "X", "X"],
            ["X", "X", "O"],
            ["X", "X", "O"]
        ]
        XCTAssertEqual(try! Challenge19.evaluateTikTakToeGame(game), "X")
    }
    
    func testEvaluateTikTakToeGame_caseTie() {
        let game: [[Character]] = [
            ["O", "X", "O"],
            ["X", "X", "O"],
            ["X", "X", "O"]
        ]
        XCTAssertEqual(try! Challenge19.evaluateTikTakToeGame(game), "T")
    }
    
    func testEvaluateTikTakToeGame_caseAnotherTie() {
        let game: [[Character]] = [
            ["O", "O", "O"],
            ["X", "X", "O"],
            ["X", "X", "X"]
        ]
        XCTAssertEqual(try! Challenge19.evaluateTikTakToeGame(game), "T")
    }
    
    func testEvaluateTikTakToeGame_caseNoWin() {
        let game: [[Character]] = [
            ["O", "X", "O"],
            ["X", "X", "O"],
            ["X", "O", "X"]
        ]
        XCTAssertNil(try! Challenge19.evaluateTikTakToeGame(game))
    }
    
    func testEvaluateTikTakToeGame_caseInvalid() {
        let game: [[Character]] = [
            ["O", "X", "O"],
            ["X", "X", "O"],
            ["X", "O", "X"],
            ["O", "O", "X"],
        ]
        XCTAssertThrowsError(try Challenge19.evaluateTikTakToeGame(game))
    }

}
