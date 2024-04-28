/*
 * Escribe un programa que imprima los 50 primeros números de la sucesión
 * de Fibonacci empezando en 0.
 * - La serie Fibonacci se compone por una sucesión de números en
 *   la que el siguiente siempre es la suma de los dos anteriores.
 *   0, 1, 1, 2, 3, 5, 8, 13...
 */

namespace ContestOfSharp.Challenges;

public abstract class Challenge3
{
    private static readonly int SequenceLimit = 50;

    public static Int64[] Fibonacci()
    {
        var sequence = new List<long>() { 0, 1 };

        while (sequence.Count < SequenceLimit)
        {
            // Anonymous Type
            var lastPair = new
            {
                first = sequence[sequence.Count - 1],
                second = sequence[sequence.Count - 2]
            };
            
            sequence.Add(lastPair.first + lastPair.second);
        }

        return sequence.ToArray();
    }

    public static void Perform()
    {
        // Print fibonacci sequence generated with method above joined using a comma
        Console.WriteLine(string.Join(", ", Fibonacci()));
    }
}