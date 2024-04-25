/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */

abstract class Challenge3 {

  static const sequenceLimit = 50;

  static List<int> fibonacci() {
    var sequence = [0, 1];

    while (sequence.length < sequenceLimit) {
      final lastPair = (
        first: sequence[sequence.length - 1],
        second: sequence.elementAt(sequence.length - 2)
      );

      sequence.add(lastPair.first + lastPair.second);
    }

    return sequence;
  }

}