//
//  Challenge10.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/29/24.
//

import Foundation

/*
 * Crea un programa que sea capaz de transformar texto natural a código
 * morse y viceversa.
 * - Debe detectar automáticamente de qué tipo se trata y realizar
 *   la conversión.
 * - En morse se soporta raya "—", punto ".", un espacio " " entre letras
 *   o símbolos y dos espacios entre palabras "  ".
 * - El alfabeto morse soportado será el mostrado en
 *   https://es.wikipedia.org/wiki/Código_morse
 */

enum Challenge10 {

    static let naturalDict = ["A": ".—", "N": "—.", "0": "—————",
                              "B": "—...", "Ñ": "——.——", "1": ".————",
                              "C": "—.—.", "O": "———", "2": "..———",
                              "P": ".——.", "3": "...——",
                              "D": "—..", "Q": "——.—", "4": "....—",
                              "E": ".", "R": ".—.", "5": ".....",
                              "F": "..—.", "S": "...", "6": "—....",
                              "G": "——.", "T": "—", "7": "——...",
                              "H": "....", "U": "..—", "8": "———..",
                              "I": "..", "V": "...—", "9": "————.",
                              "J": ".———", "W": ".——", ".": ".—.—.—",
                              "K": "—.—", "X": "—..—", ",": "——..——",
                              "L": ".—..", "Y": "—.——", "?": "..——..",
                              "M": "——", "Z": "——..", "\"": ".—..—.", 
                              "/": "—..—.", "!": "—.—.——"]

    static let morseDict = {
        var dict = [String: String]()
        for (key, value) in naturalDict {
            dict[value] = key
        }
        return dict
    }()

    static func transformToMorse(text: String) -> String {
        return text
            .uppercased()
            .split(separator: " ")
            .map { word in
                word
                    .filter { char in naturalDict.keys.contains(where: { $0 == String(char) }) }
                    .compactMap { naturalDict[String($0)] }
                    .joined(separator: " ")
            }
            .joined(separator: "  ")
    }

    static func transformFromMorse(_ morse: String) -> String {
        return morse
            .split(separator: "  ")
            .map { morseWord in
                morseWord
                    .split(separator: " ")
                    .compactMap { morseDict[String($0)] }
                    .joined(separator: "")
            }
            .joined(separator: " ")
    }

}
