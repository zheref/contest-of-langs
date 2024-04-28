package org.example.challenges

interface Challenge5 {

    interface Polygon {
        fun getArea(): Double
        val isEquilateral: Boolean
    }

    data class Triangle(
        private val base: Double,
        private val height: Double,
        private val firstAngle: Double = 60.0
    ) : Polygon {

        override fun getArea(): Double {
            return (base * height) / 2
        }

        override val isEquilateral: Boolean
            get() = firstAngle == 60.0

        val isRectangular: Boolean
            get() = firstAngle == 90.0

        val isIsosceles: Boolean
            get() = firstAngle == 60.0
    }

    data class Rectangle(
        private val length: Double,
        private val width: Double = length
    ) : Polygon {

        override fun getArea(): Double {
            return length * width
        }

        override val isEquilateral: Boolean
            get() = length == width

        val isSquare: Boolean
            get() = isEquilateral
    }

}