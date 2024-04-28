package challenges
import org.example.challenges.Challenge5
import kotlin.test.*

class Challenge5Test {
    @Test fun testTriangles() {
        val triangle1 = Challenge5.Triangle(base = 20.0, height = 20.0)
        assertEquals(expected = 200.0, actual = triangle1.getArea(), 0.001)
        assertTrue { triangle1.isEquilateral }
        assertFalse { triangle1.isRectangular }
        assertTrue { triangle1.isIsosceles }

        val triangle2 = Challenge5.Triangle(base = 30.0, height = 30.0, firstAngle = 90.0)
        assertEquals(expected = 450.0, actual = triangle2.getArea())
        assertFalse { triangle2.isEquilateral }
        assertTrue { triangle2.isRectangular }
        assertFalse { triangle2.isIsosceles }

        val triangle3 = Challenge5.Triangle(base = 30.0, height = 20.0, firstAngle = 30.0)
        assertEquals(expected = 300.0, actual = triangle3.getArea())
        assertFalse { triangle3.isEquilateral }
        assertFalse { triangle3.isRectangular }
        assertFalse { triangle3.isIsosceles }
    }

    @Test fun testRectangles() {
        val rectangle1 = Challenge5.Rectangle(length = 30.0, width = 20.0)
        assertEquals(600.0, rectangle1.getArea(), 0.001)
        assertFalse { rectangle1.isEquilateral }
        assertFalse { rectangle1.isSquare }

        val rectangle2: Challenge5.Rectangle = Challenge5.Rectangle(length = 30.0)
        assertEquals(900.0, rectangle2.getArea(), 0.001)
        assertTrue { rectangle2.isEquilateral }
        assertTrue { rectangle2.isSquare }
    }
}