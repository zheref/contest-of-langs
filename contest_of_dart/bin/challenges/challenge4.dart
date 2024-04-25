/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */

abstract class Challenge4 {

  static bool isPrime(int number) {
    if (number < 2) return false;

    for (var n = 2; n < number; n++) {
      if (number % n == 0) return false;
    }

    return true;
  }

  static void perform() {
    List<int> primeNumbers = [];

    for (var n = 1; n <= 100; n++) {
      if (isPrime(n)) {
        primeNumbers.add(n);
      }
    }

    print(
      primeNumbers.join(", ")
    );
  }

}