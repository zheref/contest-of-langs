/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

enum Challenge1 {
  challenge1;

  static String multiplesOfThreeReplacement = 'fizz';
  static String multiplesOfFiveReplacement = 'buzz';
  static String multiplesOfThreeAndFiveReplacement = 'fizzbuzz';

  static String fizzBuzz() {
    String toPrint = "";

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

  static bool isNumber({required int $, required int multipleOf}) {
    return $ % multipleOf == 0;
  }

  static void perform() {
    print(
        fizzBuzz()
    );
  }

}