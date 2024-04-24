const multiplesOfThreeReplacement = 'fizz'
const multiplesOfFiveReplacement = 'buzz'
const multiplesOfThreeAndFiveReplacement = 'fizzbuzz'

function fizzBuzz() {
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

function isNumberMultipleOf(number: number, multiple: number) {
    return number % multiple === 0
}

function performFizzBuzz() {
    console.log(fizzBuzz())
}

export { fizzBuzz, performFizzBuzz, isNumberMultipleOf }