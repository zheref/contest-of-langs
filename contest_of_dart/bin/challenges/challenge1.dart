/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

abstract class Challenge1 {
  static final String multiplesOfThreeReplacement = 'fizz';
  static final String multiplesOfFiveReplacement = 'buzz';
  static final String multiplesOfThreeAndFiveReplacement = 'fizzbuzz';

  static String fizzBuzz() {
    var toPrint = "";

    for (int n = 0; n <= 100; n++) {
      if (n > 0) {
        toPrint += "\n";
      }

      if (isNumber($: n, multipleOf: 3) && isNumber($: n, multipleOf: 5)) {
        toPrint += multiplesOfThreeAndFiveReplacement;
      } else if (isNumber($: n, multipleOf: 3)) {
        toPrint += multiplesOfThreeReplacement;
      } else if (isNumber($: n, multipleOf: 5)) {
        toPrint += multiplesOfFiveReplacement;
      } else {
        toPrint += "$n";
      }
    }

    return toPrint;
  }

  static void perform() {
    print(fizzBuzz());
  }
}

bool isNumber({required int $, required int multipleOf}) {
  return $ % multipleOf == 0;
}
