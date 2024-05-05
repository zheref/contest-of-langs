/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */

using ContestOfSharp.South;

namespace ContestOfSharp.Challenges;

public abstract class Challenge4
{
    public static bool IsPrime(int number)
    {
        return number.IsPrime();
    }

    public static void Perform()
    {
        var primeNumbers = new List<int>();

        for (var n = 1; n <= 100; n++) {
            if (IsPrime(number: n)) {
                primeNumbers.Add(n);
            }
        }

        Console.WriteLine(
            string.Join(", ", primeNumbers)
        );
    }
}