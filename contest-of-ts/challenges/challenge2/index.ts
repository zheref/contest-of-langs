/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

interface IPotentialAnagram {
    _: string;
    anagramOf: string;
}

function isWord({_, anagramOf}: IPotentialAnagram): boolean {
    if (_ === anagramOf) return false

    return _.toLowerCase()
            .split('')
            .sort()
            .join('') 
        === anagramOf
            .toLowerCase()
            .split('')
            .sort()
            .join('')
}

export { isWord }