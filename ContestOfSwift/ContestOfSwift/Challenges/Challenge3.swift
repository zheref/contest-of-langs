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

internal enum Challenge3 {

    private static let limit = 50

    internal static func fibonacci() -> [Int] {
        var sequence = [0, 1]

        while sequence.count < limit {
            let lastPair: (Int, Int) = (
                sequence[sequence.count - 1],
                sequence[sequence.count - 2]
            )

            sequence.append(lastPair.0 + lastPair.1)
        }

        return sequence
    }

    internal static func perform() {
        print(
            fibonacci()
                .map { "\($0)" }
                .joined(separator: ", ")
        )
    }

}
