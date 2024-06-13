package org.example
import kotlinx.coroutines.runBlocking
import org.example.challenges.challenge0.*
import org.example.challenges.challenge1.*
import org.example.challenges.challenge3.*
import org.example.challenges.challenge4.*

fun main() = runBlocking {
    println("Challange 0: Seconds Counter")
    val cancellable = performSecondsCoroutine(60)
    println("Challenge 1: Fizz Buzz")
    performFizzBuzz()
    println("Challenge 3: Fibonacci")
    performFibonacci()
    println("Challenge 4: Prime Numbers")
    performPrimeNumbers()
}