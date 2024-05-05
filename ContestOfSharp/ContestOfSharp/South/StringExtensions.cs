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

    public static bool IsEmpty(this string self) => self.Trim().Length == 0;

    public static string Inverted(this string self)
    {
        if (self.IsEmpty()) return self;
        var inverted = "";
        foreach (int i in Enumerable.Range(1, self.Length))
            inverted += self[^i];
        return inverted;
    }
}