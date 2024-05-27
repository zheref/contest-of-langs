using System.Text.RegularExpressions;

namespace ContestOfSharp.South;

public static partial class StringExtensions
{
    public static bool IsAnagramOf(this string self, string word)
    {
        return self
            .ToLower()
            .OrderBy(c => c)
            .SequenceEqual(word.ToLower().OrderBy(c => c));
    }

    public static bool IsEmpty(this string self) => self.Trim().Length == 0;

    /// <summary>
    /// Inverts the order of characters in the given string.
    /// </summary>
    /// <param name="self">The input string to be inverted.</param>
    /// <returns>The inverted string.</returns>
    public static string Inverted(this string self)
    {
        if (self.IsEmpty()) return self;
        var inverted = "";
        foreach (int i in Enumerable.Range(1, self.Length))
            inverted += self[^i];
        return inverted;
    }
    
    /// <summary>
    /// Removes all numeric characters from the input string.
    /// </summary>
    /// <param name="self">The input string to be cleaned.</param>
    /// <returns>The cleaned string with all numeric characters removed.</returns>
    public static string NumbersFree(this string self)
        => NumbersRegex().Replace(self, "");

    /// <summary>
    /// Removes all non-alphanumeric characters from the input string.
    /// </summary>
    /// <param name="self">The input string to be cleaned.</param>
    /// <returns>The cleaned string with only alphanumeric characters and whitespace.</returns>
    public static string SpecialCharactersFree(this string self)
        => SpecialCharactersFreeRegex().Replace(self, "");
    
    // Common Regular Expressions
    [GeneratedRegex(@"[^a-zA-Z0-9\s]")] private static partial Regex SpecialCharactersFreeRegex();
    [GeneratedRegex("[0-9]")] private static partial Regex NumbersRegex();
}