using ContestOfSharp.South;

namespace ContestOfSharp.Challenges;

public abstract class Challenge8
{
    public static Dictionary<string, int> CountWordsIn(string text)
        =>
            text.ToLower()
                .SpecialCharactersFree()
                .NumbersFree()
                .Split(' ')
                .Where(x => !x.IsEmpty())
                .GroupBy(x => x)
                .ToDictionary(x => x.Key, x => x.Count());
    
    public static int CountInstancesOf(string word, string inText) => inText.CountInstancesOf(word);
}