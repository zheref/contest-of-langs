/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */

const sequenceLimit = 50

function fibonacci(): number[] {
    let sequence = [0, 1]

    while (sequence.length < sequenceLimit) {
        const lastPair = { 
            first: sequence[sequence.length - 2], 
            second: sequence[sequence.length - 1] 
        }
        sequence.push(lastPair.first + lastPair.second)
    }

    return sequence
}

function performFibonacci() {
    console.log(
        fibonacci().join(', ')
    )
}

export { fibonacci, performFibonacci }