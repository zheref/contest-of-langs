package org.example.challenges.challenge3

/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */

private const val SEQUENCE_LIMIT = 50

fun fibonacci(): List<Long> {
    val sequence: MutableList<Long> = mutableListOf(0, 1)

    while (sequence.size < SEQUENCE_LIMIT) {
        // Object
        val lastPair = object {
            val first = sequence[sequence.size - 1]
            val second = sequence[sequence.size - 2]
        }

        sequence.add(lastPair.first + lastPair.second)
    }

    return sequence
}

fun performFibonacci() {
    println(
        fibonacci()
            .joinToString(separator = ", ")
    )
}