interface Polygon {
    area: number;
    isEquilateral: boolean;
}

class Triangle implements Polygon { 
    constructor(
        public base: number, 
        public height: number, 
        public firstAngle: number = 60) {}

    get area() {
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

    get area() {
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