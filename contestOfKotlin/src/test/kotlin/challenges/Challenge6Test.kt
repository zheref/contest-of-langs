package challenges.challenges6

import kotlinx.coroutines.ExperimentalCoroutinesApi
import org.example.challenges.challenge6.*
import java.net.URI
import kotlin.test.*
import kotlinx.coroutines.test.*
import org.junit.jupiter.api.assertThrows
import java.io.IOException
import java.net.URL

class Challenge6Test {

    companion object {
        private val validImageUrl1: URL = URI("https://picsum.photos/300/200").toURL()
        private val validImageUrl2: URL = URI("https://picsum.photos/640/480").toURL()
        private val validImageUrl3: URL = URI("https://picsum.photos/1920/1080").toURL()
        private val notFoundImageUrl: URL = URI("https://picsum.photos").toURL()
        private val invalidImageUrl: URL = URI("https://picsum.never/never").toURL()
    }

    @OptIn(ExperimentalCoroutinesApi::class)
    @Test fun testDownloadImage() = runTest {
        val image1 = downloadImage(validImageUrl1)
        assertNotNull(image1)
        val image2 = downloadImage(validImageUrl2)
        assertNotNull(image2)
        val image3 = downloadImage(validImageUrl3)
        assertNotNull(image3)
        val notFoundImage = downloadImage(notFoundImageUrl)
        assertNull(notFoundImage)
        val invalidImageException = kotlin.runCatching { downloadImage(invalidImageUrl) }.exceptionOrNull()
        assertNotNull(invalidImageException)
    }

    @OptIn(ExperimentalCoroutinesApi::class)
    @Test fun testCalculateAspectRatioFrom() = runTest {
        val (w1, h1) = calculateAspectRatioFrom(validImageUrl1)
        assertEquals(expected = 3, w1)
        assertEquals(expected = 2, h1)

        val (w2, h2) = calculateAspectRatioFrom(validImageUrl2)
        assertEquals(expected = 4, w2)
        assertEquals(expected = 3, h2)

        val aspectRatio3 = calculateAspectRatioFrom(validImageUrl3)
        assertEquals(Pair(16, 9), aspectRatio3)

        val notAnImageException = kotlin.runCatching { calculateAspectRatioFrom(notFoundImageUrl) }.exceptionOrNull()
        assertNotNull(notAnImageException)

        val ioException = kotlin.runCatching { calculateAspectRatioFrom(invalidImageUrl) }.exceptionOrNull()
        assertNotNull(ioException)
    }

    @Test fun testGreatestCommonDivisor() {
        assertEquals(expected = 5, greatestCommonDivisorFrom(15, 5))
        assertEquals(expected = 1, greatestCommonDivisorFrom(17, 4))
        assertEquals(expected = 20, greatestCommonDivisorFrom(0, 20))
        assertEquals(expected = 34, greatestCommonDivisorFrom(34, 0))
        assertEquals(expected = 0, greatestCommonDivisorFrom(0, 0))
        assertEquals(expected = 5, greatestCommonDivisorFrom(-10, 5))
        assertEquals(expected = 5, greatestCommonDivisorFrom(-25, -5))
        assertEquals(expected = 6, greatestCommonDivisorFrom(123456, 7890))
    }
}