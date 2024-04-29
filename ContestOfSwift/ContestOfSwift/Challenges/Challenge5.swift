//
//  Challenge5.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/26/24.
//

/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 */

import Foundation

enum Challenge5 {

    protocol Polygon {
        func getArea() -> Double
        var isEquilateral: Bool { get }
    }

    struct Triangle: Polygon {
        let base: Double
        let height: Double
        var firstAngle: Double = 60

        func getArea() -> Double {
            (base * height) / 2
        }

        var isEquilateral: Bool {
            firstAngle == 60
        }

        var isRectangular: Bool {
            firstAngle == 90
        }

        var isIsosceles: Bool {
            return base == height
        }
    }

    struct Rectangle: Polygon {
        let length: Double
        
        let width: Double

        init(length: Double, width: Double) {
            self.length = length
            self.width = width
        }

        init(length: Double) {
            self.length = length
            self.width = length
        }

        func getArea() -> Double {
            return length * width
        }

        var isEquilateral: Bool {
            length == width
        }

        var isSquare: Bool { isEquilateral }
    }

}
