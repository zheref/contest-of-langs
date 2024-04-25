package challenges.challenge4

import org.example.challenges.challenge4.*
import kotlin.test.*

class Challange4TestCase {
    @Test fun testIsPrime() {
        assertTrue(isPrime(2))
        assertTrue(isPrime(3))
        assertTrue(isPrime(5))
        assertTrue(isPrime(7))
        assertTrue(isPrime(23))
        assertTrue(isPrime(31))
        assertTrue(isPrime(73))

        assertFalse(isPrime(1))
        assertFalse(isPrime(4))
        assertFalse(isPrime(9))
        assertFalse(isPrime(15))
        assertFalse(isPrime(21))
        assertFalse(isPrime(27))
        assertFalse(isPrime(30))
    }
}