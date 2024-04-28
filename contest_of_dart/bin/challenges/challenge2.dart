/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */

bool isWord({required String $, required String anagramOf}) {
  if ($ == anagramOf) {
    return false;
  }

  var $characters =
      $.toLowerCase().split('').map((e) => e.codeUnitAt(0)).toList();
  var anagramOfCharacters =
      anagramOf.toLowerCase().split('').map((e) => e.codeUnitAt(0)).toList();

  $characters.sort();
  anagramOfCharacters.sort();

  return $characters.toString() == anagramOfCharacters.toString();
}
