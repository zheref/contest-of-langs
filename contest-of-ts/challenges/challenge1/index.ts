/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

const multiplesOfThreeReplacement = 'fizz'
const multiplesOfFiveReplacement = 'buzz'
const multiplesOfThreeAndFiveReplacement = 'fizzbuzz'

function fizzBuzz(): string {
    let toPrint = ''

    for (let i = 1; i <= 100; i++) {
        if (i > 1) {
            toPrint += '\n'
        }

        if (isNumberMultipleOf(i, 3) && isNumberMultipleOf(i, 5)) {
            toPrint += multiplesOfThreeAndFiveReplacement
        } else if (isNumberMultipleOf(i, 3)) {
            toPrint += multiplesOfThreeReplacement
        } else if (isNumberMultipleOf(i, 5)) {
            toPrint += multiplesOfFiveReplacement
        } else {
            toPrint += i
        }
    }

    return toPrint
}

function isNumberMultipleOf(number: number, multiple: number): boolean {
    return number % multiple === 0
}

function performFizzBuzz() {
    console.log(fizzBuzz())
}

export { fizzBuzz, performFizzBuzz, isNumberMultipleOf }