package org.example.challenges.challenge8

/*
 * Crea un programa que cuente cuantas veces se repite cada palabra
 * y que muestre el recuento final de todas ellas.
 * - Los signos de puntuación no forman parte de la palabra.
 * - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 * - No se pueden utilizar funciones propias del lenguaje que
 *   lo resuelvan automáticamente.
 */

fun counWordsIn(text: String): Map<String, Int> {
    return text
        .filter { it.isLetterOrDigit() || it.isWhitespace() }
        .split(" ")
        .map { it.lowercase() }
        .groupingBy { it }
        .eachCount()
}

fun countInstancesOfWord(word: String, inText: String): Int {
    if (word.isEmpty()) return 0
    return countInstancesOfWord(word, inArray = inText
        .filter { it.isLetterOrDigit() || it.isWhitespace() }
        .split(" ")
        .toTypedArray()
    )
}

fun countInstancesOfWord(word: String, inArray: Array<String>): Int {
    if (word.isEmpty()) return 0
    return inArray.count { it == word }
}