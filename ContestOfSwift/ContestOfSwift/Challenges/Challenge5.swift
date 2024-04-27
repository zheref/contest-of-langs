//
//  Challenge5.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/26/24.
//

/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

import Foundation

enum Challenge5 {

    protocol Polygon {
        var area: Double { get }
        var isEquilateral: Bool { get }
    }

    struct Triangle: Polygon {
        let base: Double
        let height: Double
        var firstAngle: Double = 60

        var area: Double {
            (base * height) / 2
        }

        var isEquilateral: Bool {
            firstAngle == 60
        }

        var isRectangular: Bool {
            firstAngle == 90
        }

        var isIsosceles: Bool {
            return base == height
        }
    }

    struct Rectangle: Polygon {
        let length: Double
        let width: Double

        init(length: Double, width: Double) {
            self.length = length
            self.width = width
        }

        init(length: Double) {
            self.length = length
            self.width = length
        }

        var area: Double {
            length * width
        }

        var isEquilateral: Bool {
            return length == width
        }

        var isSquare: Bool { isEquilateral }
    }

}
