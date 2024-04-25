//
//  Challenge4.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/24/24.
//

/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */

import Foundation

enum Challenge4 {

    static func isPrime(_ number: Int) -> Bool {
        guard number >= 2 else {
            return false
        }

        for n in (2..<number) {
            if number % n == 0 {
                return false
            }
        }

        return true
    }

    static func perform() {
        var primeNumbers = [Int]()
        for n in (0...100) {
            if isPrime(n) {
                primeNumbers.append(n)
            }
        }
        print(
            primeNumbers
                .map { "\($0)" }
                .joined(separator: ", ")
        )
    }

}
