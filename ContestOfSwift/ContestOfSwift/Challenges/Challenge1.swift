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

enum Challenge1 {

    private static let multiplesOfThreeReplacement = "fizz"
    private static let multiplesOfFiveReplacement = "buzz"
    private static let multiplesOfThreeAndFiveReplacement = "fizzbuzz"

    static func fizzBuzzImperative() -> String {
        var toPrint = ""

        for n in 1...100 {
            if n > 1 {
                toPrint += "\n"
            }

            if n.isMultiple(of: 3) && n.isMultiple(of: 5) {
                toPrint += multiplesOfThreeAndFiveReplacement
            } else if n.isMultiple(of: 3) {
                toPrint += multiplesOfThreeReplacement
            } else if n.isMultiple(of: 5) {
                toPrint += multiplesOfFiveReplacement
            } else {
                toPrint += "\(n)"
            }
        }

        return toPrint
    }

    static func fizzBuzzDeclarative() -> String {
        (1...100)
            .reduce([String]()) {
                when([
                    (($1.isMultiple(of: 3) && $1.isMultiple(of: 5)),
                     $0.appending(element: multiplesOfThreeAndFiveReplacement)),
                    ($1.isMultiple(of: 3), $0.appending(element: multiplesOfThreeReplacement)),
                    ($1.isMultiple(of: 5), $0.appending(element: multiplesOfFiveReplacement))
                ], fallbackingWith: $0.appending(element: "\($1)"))
            }
            .joined(separator: "\n")
    }

    static func isNumber(_ number: Int, multipleOf m: Int) -> Bool { number.isMultiple(of: m) }

    static func perform() {
        print("Imperative ------------------------------------------------")
        print(fizzBuzzImperative())
        print("Declarative ------------------------------------------------")
        print(fizzBuzzDeclarative())
    }

}
