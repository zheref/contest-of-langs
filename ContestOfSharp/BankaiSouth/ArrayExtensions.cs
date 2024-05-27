namespace BankaiSouth;

public static class ArrayExtensions
{
    // TO TEST
    public static T[] Adding<T>(this T[] array, T element)
        => (new List<T>(array) { element }).ToArray();

    // TO TEST
    public static string Joined<T>(this T[] self, string separator)
        => string.Join(separator, self);
    
}