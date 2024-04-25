/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

interface IPotentialAnagram {
    $: string;
    anagramOf: string;
}

function isWord({$, anagramOf}: IPotentialAnagram): boolean {
    if ($ === anagramOf) return false

    return $.toLowerCase()
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