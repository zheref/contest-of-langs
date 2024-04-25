package org.example.challenges.challenge4

/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */

fun isPrime(number: Int): Boolean {
    if (number < 2) return false

    for (n in 2 until number) {
        if (number % n == 0) return false
    }

    return true
}

fun performPrimeNumbers() {
    val primeNumbers: MutableList<Int> = mutableListOf()
    for (n in 0..100) {
        if (isPrime(n)) {
            primeNumbers.add(n)
        }
    }
    println(
        primeNumbers
            .joinToString(separator = ", ")
    )
}