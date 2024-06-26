using System.Text.RegularExpressions;

namespace BankaiSouth;

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
    /// Counts the number of occurrences of a given word in the input string, ignoring case and special characters.
    /// </summary>
    /// <param name="self">The input string to search.</param>
    /// <param name="word">The word to count the occurrences of.</param>
    /// <returns>The number of occurrences of the given word in the input string.</returns>
    public static int CountInstancesOf(this string self, string word)
    {
        if (self.IsEmpty()) return 0;
        
        return self
            .SpecialCharactersFree()
            .Split(' ')
            .Select(x => x.ToLower())
            .Count(x => x.Equals(
                word.ToLower()
                    .SpecialCharactersFree()
            ));
    }

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
    
    
    /*
     * var isBalanced: Bool {
           let symbols = ["(": ")", "[": "]", "{": "}", "<": ">"]
           let characters = split(separator: "")
           var balance = [String]()

           for character in characters {
               let (isOpening, isClosing) = (
                   isOpening: symbols.keys.has(element: character.asString),
                   isClosing: symbols.values.has(element: character.asString)
               )

               if isOpening || isClosing {
                   if isOpening {
                       balance.append(character.asString)
                   } else if balance.isEmpty || character != symbols[balance.removeLast()]! {
                       return false
                   }
               } else { continue }
           }

           return balance.isEmpty
       }
     */
    
    /// <summary>
    /// Determines whether the input string has balanced parentheses, brackets, braces, and angle brackets.
    /// </summary>
    /// <param name="self">The input string to be checked for balanced symbols.</param>
    /// <returns>True if the input string has balanced symbols, false otherwise.</returns>
    public static bool IsBalanced(this string self)
    {
        var symbols = new Dictionary<char, char>
        {
            ['('] = ')', 
            ['['] = ']', 
            ['{'] = '}', 
            ['<'] = '>'
        };
        
        var balance = new Stack<char>();

        foreach (var character in self)
        {
            var isOpening = symbols.ContainsKey(character);
            var isClosing = symbols.ContainsValue(character);

            if (isOpening || isClosing)
            {
                if (isOpening)
                    balance.Push(character);
                else if (balance.Count == 0 || character != symbols[balance.Pop()])
                    return false;
            }
        }

        return balance.Count == 0;
    }
}