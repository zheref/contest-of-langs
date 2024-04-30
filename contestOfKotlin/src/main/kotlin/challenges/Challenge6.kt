/*
 * Crea un programa que se encargue de calcular el aspect ratio de una
 * imagen a partir de una url.
 * - Url de ejemplo:
 *   https://raw.githubusercontent.com/mouredevmouredev/master/mouredev_github_profile.png
 * - Por ratio hacemos referencia por ejemplo a los "16:9" de una
 *   imagen de 1920*1080px.
 */

package org.example.challenges.challenge6
import java.awt.image.BufferedImage
import java.net.URL
import kotlin.math.abs
import kotlinx.coroutines.*
import java.io.IOException
import javax.imageio.ImageIO
import kotlin.jvm.Throws

class NotAnImageException: Exception() {}

@Throws
suspend fun downloadImage(url: URL): BufferedImage? = coroutineScope {
    async(Dispatchers.IO) {
        ImageIO.read(url)
    }.await()
}

@Throws
suspend fun calculateAspectRatioFrom(url: URL): Pair<Int, Int> = coroutineScope {
    try {
        val image = downloadImage(url) ?: throw NotAnImageException()
        val gcd = greatestCommonDivisorFrom(image.width, image.height)

        Pair (
            first = image.width / gcd,
            second = image.height / gcd
        )
    } catch (error: IOException) {
        throw error
    }
}

fun greatestCommonDivisorFrom(n: Int, d: Int): Int {
    var numerator = n
    var divisor = d
    while (divisor != 0) {
        val temp = divisor
        divisor = numerator % divisor
        numerator = temp
    }
    return abs(numerator)
}