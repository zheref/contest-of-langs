package challenges.challenge2

import org.example.challenges.challenge2.*
import kotlin.test.*

class Challenge2TestCase {
    @Test fun testIsWordAnagramOf() {
        assertTrue(
            isWord("listen", anagramOf = "silent")
        )
        assertTrue(
            isWord("triangle", anagramOf = "integral")
        )
        assertTrue(
            isWord("amor", anagramOf = "roma")
        )
        assertTrue(
            isWord("sergio", anagramOf = "riesgo")
        )
        assertTrue(
            isWord("delira", anagramOf = "lidera")
        )
        assertTrue(
            isWord("ballena", anagramOf = "llenaba")
        )
        assertTrue(
            isWord("valora", anagramOf = "Alvaro")
        )
        assertTrue(
            isWord("PRAGA", anagramOf = "pagar")
        )

        assertFalse(
            isWord("amor", anagramOf = "amor")
        )
        assertFalse(
            isWord("edwin", anagramOf = "winned")
        )
        assertFalse(
            isWord("obito", anagramOf = "tobi")
        )
        assertFalse(
            isWord("sasuke", anagramOf = "itachi")
        )
        assertFalse(
            isWord("maria", anagramOf = "rima")
        )
        assertFalse(
            isWord("alborota", anagramOf = "lobo rata")
        )
    }
}