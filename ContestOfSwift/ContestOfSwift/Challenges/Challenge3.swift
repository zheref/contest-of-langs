//
//  Challenge3.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/24/24.
//

/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */

import Foundation

// Virtual namespacing
enum Challenge3 {

    private static let limit = 50

    static func fibonacci() -> [Int] {
        var sequence = [0, 1]

        while sequence.count < limit {
            // Tuple
            let lastPair = (
                first: sequence[sequence.count - 1],
                second: sequence[sequence.count - 2]
            )

            sequence.append(lastPair.first + lastPair.second)
        }

        return sequence
    }

    static func perform() {
        print(
            fibonacci()
                .map { "\($0)" }
                .joined(separator: ", ")
        )
    }

}
