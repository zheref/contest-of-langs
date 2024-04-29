//
//  Challenge9.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/29/24.
//

/*
 * Reto #8
 * DECIMAL A BINARIO
 * Fecha publicación enunciado: 18/02/22
 * Fecha publicación resolución: 02/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa se encargue de transformar un número decimal a binario sin utilizar funciones propias del lenguaje que lo hagan directamente.
 *
 */

import Foundation

enum Challenge9 {

    enum NumericTransformationError: Error {
        case invalidBase
    }

    static func decimalToBinary(_ d: Int) -> String {
        try! decimalToSystem(usingBase: 2, decimal: d)
    }

    static func decimalToSystem(usingBase base: Int, decimal: Int) throws -> String {
        guard base > 1 else { throw NumericTransformationError.invalidBase }
        if decimal == 0 { return "0" }

        let sense = decimal / abs(decimal)
        var number = abs(decimal)
        var transformed = ""

        while number != 0 {
            let reminder = number % base // Extract reminder
            number /= base // Operate
            transformed = "\(digit(representing: reminder))\(transformed)" // Prepend
        }

        // Handle potential negatives
        if sense < 0 && !transformed.isEmpty {
            transformed = "-\(transformed)"
        }

        return transformed.isEmpty ? "0" : transformed
    }

    private static func digit(representing number: Int) -> String {
        if number < 10 { return "\(number)" }
        switch number {
        case 10:
            return "A"
        case 11:
            return "B"
        case 12:
            return "C"
        case 13:
            return "D"
        case 14:
            return "E"
        case 15:
            return "F"
        default:
            return "Z"
        }
    }

}
