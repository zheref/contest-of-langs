import { expect, test } from "bun:test"
import { type Polygon, Triangle, Rectangle } from "."

test("Challenge 5: Triangles", () => {
    const triangle1 = new Triangle(20, 20)
    expect(triangle1.area).toBe(200)
    expect(triangle1.isEquilateral).toBe(true)
    expect(triangle1.isRectangular).toBe(false)
    expect(triangle1.isIsosceles).toBe(true)

    const triangle2 = new Triangle(30, 30, 90)
    expect(triangle2.area).toBe(450)
    expect(triangle2.isEquilateral).toBe(false)
    expect(triangle2.isRectangular).toBe(true)
    expect(triangle2.isIsosceles).toBe(true)

    const triangle3 = new Triangle(30, 20, 30)
    expect(triangle3.area).toBe(300)
    expect(triangle3.isEquilateral).toBe(false)
    expect(triangle3.isRectangular).toBe(false)
    expect(triangle3.isIsosceles).toBe(false)
})

test("Challenge 5: Rectangles", () => {
    const rectangle1 = new Rectangle(30, 20)
    expect(rectangle1.area).toBe(600)
    expect(rectangle1.isEquilateral).toBe(false)
    expect(rectangle1.isSquare).toBe(false)

    const square = new Rectangle(30)
    expect(square.area).toBe(900)
    expect(square.isEquilateral).toBe(true)
    expect(square.isSquare).toBe(true)
})