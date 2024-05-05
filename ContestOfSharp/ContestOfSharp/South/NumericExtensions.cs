using System.Runtime.InteropServices.ObjectiveC;
using SkiaSharp;

namespace ContestOfSharp.South;

// https://learn.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/extension-methods

public static class NumericExtensions
{
    public static bool IsMultipleOf(this int self, int number) => self % number == 0;

    public static long[]? Fibonaccis(this int self)
    {
        if (self < 0) return null; 
        if (self == 0) return Array.Empty<Int64>();
        if (self == 1) return new long[] { 0 };

        var sequence = new List<long>() { 0, 1 };

        while (sequence.Count < self)
        {
            // Anonymous Type
            var lastPair = new
            {
                first = sequence[^1],
                second = sequence[^2]
            };
            
            sequence.Add(lastPair.first + lastPair.second);
        }

        return sequence.ToArray();
    }

    public static bool IsPrime(this int self)
    {
        if (self < 2) return false;

        for (var n = 2; n < self; n++)
        {
            if (self % n == 0) return false;
        }

        return true;
    }
    
    public static bool IsEven(this int self) => self % 2 == 0;
    public static bool IsOdd(this int self) => self % 2 != 0;

    public static int Abs(this int self) => int.Abs(self);

    public static int GreatestCommonDivisor(this int self, int with)
    {
        var first = self;
        var second = with;
        while (second != 0)
        {
            var temp = second;
            second = first % second;
            first = temp;
        }

        return first.Abs();
    }

    public static TimeSpan Seconds(this int self) => TimeSpan.FromSeconds(self);
}