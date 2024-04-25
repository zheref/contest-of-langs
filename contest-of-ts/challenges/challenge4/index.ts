/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */

function isPrime(number: number): boolean {
    if (number < 2) return false

    for (let n = 2; n < number; n++) {
        if (number % n === 0) return false
    }

    return true
}

function performPrimeNumbers() {
    let primeNumbers: number[] = []
    for (let n = 1; n <= 100; n++) {
        if (isPrime(n)) {
            primeNumbers.push(n)
        }
    }
    console.log(
        primeNumbers.join(', ')
    )
}

export { isPrime, performPrimeNumbers }