namespace ContestOfSharp.South;

public static class StringExtensions
{
    public static bool IsAnagramOf(this string self, string word)
    {
        return self
            .ToLower()
            .OrderBy(c => c)
            .SequenceEqual(word.ToLower().OrderBy(c => c));
    }
}