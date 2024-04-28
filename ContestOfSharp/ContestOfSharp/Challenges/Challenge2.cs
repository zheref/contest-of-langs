/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

namespace ContestOfSharp.Challenges;
 
public class Challenge2
{
    public static bool IsWord(string word, string anagramOf)
    {
        if (word == anagramOf) 
            return false;
        return word.ToLower().OrderBy(c => c).SequenceEqual(anagramOf.ToLower().OrderBy(c => c));
    }
}