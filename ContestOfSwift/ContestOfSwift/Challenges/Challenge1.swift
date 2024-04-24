//
//  Challenge1.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/23/24.
//

/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

import Foundation

public enum Challenge1 {

    private static let multiplesOfThreeReplacement = "fizz"
    private static let multiplesOfFiveReplacement = "buzz"
    private static let multiplesOfThreeAndFiveReplacement = "fizzbuzz"

    internal static func fizzBuzz() -> String {
        var toPrint = ""

        for n in 1...100 {
            if n > 1 {
                toPrint += "\n"
            }

            if isNumber(n, multipleOf: 3) && isNumber(n, multipleOf: 5) {
                toPrint += multiplesOfThreeAndFiveReplacement
            } else if isNumber(n, multipleOf: 3) {
                toPrint += multiplesOfThreeReplacement
            } else if isNumber(n, multipleOf: 5) {
                toPrint += multiplesOfFiveReplacement
            } else {
                toPrint += "\(n)"
            }
        }

        return toPrint
    }

    internal static func isNumber(_ number: Int, multipleOf m: Int) -> Bool {
        return number % m == 0
    }

    internal static func perform() {
        print(
            fizzBuzz()
        )
    }

}
