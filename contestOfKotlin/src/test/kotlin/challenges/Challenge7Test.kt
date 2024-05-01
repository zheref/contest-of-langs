package challenges.challenge7

import kotlin.test.*

import org.example.challenges.challenge7.*

class Challenge7Test {
    @Test fun testInvertString() {
        assertEquals("olleH", invert(string = "Hello"))
        assertEquals("dlroW olleH", invert(string = "Hello World"))
        assertEquals("T", invert(string = "T"))
        assertEquals("", invert(string = ""))
        assertEquals("odnum aloH", invert(string = "Hola mundo"))
        assertEquals("citoxE", invert(string = "Exotic"))
        assertEquals("yxalaG", invert(string = "Galaxy"))
        assertEquals("faelonaN", invert(string = "Nanoleaf"))
        assertEquals("kayak", invert(string = "kayak"))
        assertEquals("deified", invert(string = "deified"))
    }
}