package org.example.challenges.challenge1

/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

private const val MULTIPLES_OF_THREE_REPLACEMENT = "fizz"
private const val MULTIPLES_OF_FIVE_REPLACEMENT = "buzz"
private const val MULTIPLES_OF_THREE_AND_FIVE_REPLACEMENT = "fizzbuzz"
fun fizzBuzz(): String {
    var toPrint = ""

    for (n in 1..100) {
        if (n > 1) {
            toPrint += "\n"
        }

        toPrint += when {
            isNumber(n, multipleOf = 3) && isNumber(n, multipleOf = 5) -> MULTIPLES_OF_THREE_AND_FIVE_REPLACEMENT
            isNumber(n, multipleOf = 3) -> MULTIPLES_OF_THREE_REPLACEMENT
            isNumber(n, multipleOf = 5) -> MULTIPLES_OF_FIVE_REPLACEMENT
            else -> n.toString()
        }
    }

    return toPrint
}
fun isNumber(number: Int, multipleOf: Int): Boolean {
    return number % multipleOf == 0
}

fun performFizzBuzz() {
    println(fizzBuzz())
}