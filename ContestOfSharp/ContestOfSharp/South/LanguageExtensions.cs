namespace ContestOfSharp.South;

public static class LanguageExtensions
{
    public static T When<T>((bool condition, T value)[] rules, T fallback)
        => rules
            .Where(r => r.condition)
            .Select(r => r.value)
            .FirstOrDefault() ?? fallback;
}