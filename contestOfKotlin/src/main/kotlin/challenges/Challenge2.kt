package org.example.challenges.challenge2

/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

fun isWord(word: String, anagramOf: String): Boolean {
    if (word == anagramOf)
        return false

    return word.lowercase()
               .toCharArray()
               .sorted() ==
            anagramOf
               .lowercase()
               .toCharArray()
               .sorted()
}