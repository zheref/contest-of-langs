package challenges.challenge8

import kotlin.test.*

import org.example.challenges.challenge8.*

class Challenge8Test {

    @Test fun test_countInstancesOfWord_withMultipleOccurrences() {
        val words = arrayOf("apple", "banana", "Apple", "orange", "aPPle")
        assertEquals(3, countInstancesOfWord("apple", inArray = words))
    }

}