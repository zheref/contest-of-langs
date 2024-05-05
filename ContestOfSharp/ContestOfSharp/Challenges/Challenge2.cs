/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

using ContestOfSharp.South;

namespace ContestOfSharp.Challenges;
 
public abstract class Challenge2
{
    public static bool IsWord(string word, string anagramOf)
    {
        if (word == anagramOf) 
            return false;
        return word.IsAnagramOf(word: anagramOf);
    }
}