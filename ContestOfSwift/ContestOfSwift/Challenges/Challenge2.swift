//
//  Challenge2.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/23/24.
//

/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

import Foundation

internal func isWord(_ word1: String, anagramOf word2: String) -> Bool {
    guard word1.lowercased() != word2.lowercased() else {
        return false
    }

    return word1.sorted() == word2.sorted()
}
