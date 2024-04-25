package challenges.challenge1

import org.example.challenges.challenge1.*
import kotlin.test.Test
import kotlin.test.*

class Challenge1TestCase {
    @Test fun testIsNumberMultipleOf() {
        assertTrue { isNumber(1, multipleOf = 1) }
        assertTrue { isNumber(1, multipleOf = 1) }
        assertTrue { isNumber(6, multipleOf = 2) }
        assertTrue { isNumber(20, multipleOf = 5) }
        assertTrue { isNumber(15, multipleOf = 5) }
        assertTrue { isNumber(21, multipleOf = 7) }
        assertTrue { isNumber(72, multipleOf = 4) }
        assertTrue { isNumber(81, multipleOf = 9) }
        assertTrue { isNumber(90, multipleOf = 10) }

        assertFalse { isNumber(3, multipleOf = 2) }
        assertFalse { isNumber(5, multipleOf = 2) }
        assertFalse { isNumber(7, multipleOf = 2) }
        assertFalse { isNumber(21, multipleOf = 5) }
        assertFalse { isNumber(72, multipleOf = 5) }
        assertFalse { isNumber(81, multipleOf = 2) }
        assertFalse { isNumber(90, multipleOf = 8) }
    }
}