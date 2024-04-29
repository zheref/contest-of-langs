//
//  Challenge8.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/29/24.
//

import Foundation

/*
 * Crea un programa que cuente cuantas veces se repite cada palabra
 * y que muestre el recuento final de todas ellas.
 * - Los signos de puntuación no forman parte de la palabra.
 * - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 * - No se pueden utilizar funciones propias del lenguaje que
 *   lo resuelvan automáticamente.
 */

enum Challenge8 {

    static func countWords(in text: String) -> [String: Int] {
        var wordsCount = [String: Int]()
        let words = text.filter { !$0.isPunctuation }
                        .split(separator: " ")
                        .map { $0.lowercased() }
                        .map { String($0) }
                        .filter { Int($0) == nil }

        for word in words {
            if !wordsCount.keys.contains(where: { $0 == word }) {
                wordsCount[word] = countInstances(of: word, in: words)
            }
        }

        return wordsCount
    }

    static func countInstances(of word: String, in text: String) -> Int {
        return countInstances(of: word,
                             in: text.filter { !$0.isPunctuation }
                                     .split(separator: " ")
                                     .map { String($0) })
    }

    static func countInstances(of word: String, in array: [String]) -> Int {
        guard !word.isEmpty else { return 0 }
        return array.reduce(0) { word.lowercased() == $1.lowercased() ? $0 + 1 : $0 }
    }

}
