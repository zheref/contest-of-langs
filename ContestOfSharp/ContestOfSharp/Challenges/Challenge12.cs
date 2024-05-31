using BankaiSouth;
namespace ContestOfSharp.Challenges;

/*
 * Crea una función que reciba dos cadenas como parámetro (str1, str2)
 * e imprima otras dos cadenas como salida (out1, out2).
 * - out1 contendrá todos los caracteres presentes en la str1 pero NO
 *   estén presentes en str2.
 * - out2 contendrá todos los caracteres presentes en la str2 pero NO
 *   estén presentes en str1.
 */
public abstract class Challenge12
{
    public static (string, string) OuterRim(string str1, string str2)
    {
        HashSet<char> set1 = [..str1.ToCharArray()];
        HashSet<char> set2 = [..str2.ToCharArray()];
        
        var commonCharacters = set1.Intersect(set2).ToArray();
        var inFirstButNotInSecond = set1.Except(commonCharacters);
        var inSecondButNotInFirst = set2.Except(commonCharacters);

        var result = (
            inFirstButNotInSecond.ToArray().Joined(""),
            inSecondButNotInFirst.ToArray().Joined("")
        ); 
        
        Console.WriteLine($"out1: {result.Item1}");
        Console.WriteLine($"out2: {result.Item2}");

        return result;
    }
}