using BankaiSouth;

namespace ContestOfSharp.Challenges;

public abstract class Challenge10
{
    private static Dictionary<char, string> naturalDict = new Dictionary<char, string>
    {
        ['A'] = ".—", ['N'] = "—.", ['0'] = "—————",
        ['B'] = "—...", ['Ñ'] = "——.——", ['1'] = ".————",
        ['C'] = "—.—.", ['O'] = "———", ['2'] = "..———",
        ['P'] = ".——.", ['3'] = "...——",
        ['D'] = "—..", ['Q'] = "——.—", ['4'] = "....—",
        ['E'] = ".", ['R'] = ".—.", ['5'] = ".....",
        ['F'] = "..—.", ['S'] = "...", ['6'] = "—....",
        ['G'] = "——.", ['T'] = "—", ['7'] = "——...",
        ['H'] = "....", ['U'] = "..—", ['8'] = "———..",
        ['I'] = "..", ['V'] = "...—", ['9'] = "————.",
        ['J'] = ".———", ['W'] = ".——", ['.'] = ".—.—.—",
        ['K'] = "—.—", ['X'] = "—..—", [','] = "——..——",
        ['L'] = ".—..", ['Y'] = "—.——", ['?'] = "..——..",
        ['M'] = "——", ['Z'] = "——..", ['"'] = ".—..—.",
        ['/'] = "—..—.", ['!'] = "—.—.——"
    };
    
    private static Dictionary<string, char> morseDict 
        = naturalDict.ToDictionary(kvp => kvp.Value, kvp => kvp.Key);
    
    public static string ToMorse(string text)
        => text
            .ToUpper()
            .Split(separator: " ")
            .Select(word => word.Select(c => naturalDict[c]).ToArray().Joined(" "))
            .ToArray()
            .Joined(separator: "  ");

    public static string ToNatural(string morse)
    {
        if (morse.IsEmpty()) return morse;
        
        return morse
                .Split(separator: "  ")
                .Select(word => word
                    .Split(separator: " ")
                    .Select(code => morseDict[code])
                    .ToArray()
                    .Joined(separator: "")
                )
                .ToArray()
                .Joined(separator: " ");
    }
}