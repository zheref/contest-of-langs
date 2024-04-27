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

interface Polygon {
    getArea: () => number;
    isEquilateral: boolean;
}

class Triangle implements Polygon { 
    constructor(
        public base: number, 
        public height: number, 
        public firstAngle: number = 60) {}

    getArea() {
        return this.base * this.height / 2
    }

    get isEquilateral() {
        return this.firstAngle === 60
    }

    get isRectangular() {
        return this.firstAngle === 90
    }

    get isIsosceles() {
        return this.base === this.height
    }
}

class Rectangle implements Polygon {
    public length: number;
    public width: number;

    constructor(
        length: number, 
        width: number = length
    ) {
        this.length = length
        this.width = width
    }

    getArea() {
        return this.length * this.width
    }

    get isEquilateral() {
        return this.length === this.width
    }

    get isSquare() {
        return this.isEquilateral
    }
}

export { type Polygon, Triangle, Rectangle }