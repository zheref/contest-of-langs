/*
 * Escribe un programa que muestre por consola (con un print) los
 * números de 1 a 100 (ambos incluidos y con un salto de línea entre
 * cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
 */

using static System.Linq.Enumerable;
using ContestOfSharp.South;

namespace ContestOfSharp.Challenges;

public abstract class Challenge1
{
    private const string MultiplesOfThreeReplacement = "fizz";
    private const string MultiplesOfFiveReplacement = "buzz";
    private const string MultiplesOfThreeAndFiveReplacement = "fizzbuzz";

    private static string FizzBuzz()
    {
        var toPrint = "";
        
        foreach (var n in Range(1, 100))
        {
            if (n > 1) toPrint += "\n";

            if (n.IsMultipleOf(number: 3) && n.IsMultipleOf(number: 5))
            {
                toPrint += MultiplesOfThreeAndFiveReplacement;
            }
            else if (n.IsMultipleOf(number: 3))
            {
                toPrint += MultiplesOfThreeReplacement;
            }
            else if (n.IsMultipleOf(number: 5))
            {
                toPrint += MultiplesOfFiveReplacement;
            }
            else
            {
                toPrint += n;
            }
        }

        return toPrint;
    }

    internal static void Perform()
    {
        Console.WriteLine(FizzBuzz());
    }
}