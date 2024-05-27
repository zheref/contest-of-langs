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


    /// <summary>
    /// Counts the instances of a specific word in a given text.
    /// </summary>
    /// <param name="word">The word to count.</param>
    /// <param name="inText">The text to analyze.</param>
    /// <returns>The count of the instances of the word in the text.</returns>
    public static int CountInstancesOf(string word, string inText)
    {
        if (inText.IsEmpty()) return 0;
        
        return inText
            .SpecialCharactersFree()
            .Split(' ')
            .Select(x => x.ToLower())
            .Count(x => x.Equals(
                word.ToLower()
                    .SpecialCharactersFree()
            ));
    }
}