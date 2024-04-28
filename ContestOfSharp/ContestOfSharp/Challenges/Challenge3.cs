using System.Collections.Generic;

namespace ContestOfSharp.Challenges;

public class Challenge3
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