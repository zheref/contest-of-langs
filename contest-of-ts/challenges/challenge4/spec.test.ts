import { expect, test } from "bun:test"
import { isPrime } from "."

test("Challenge 4: Prime numbers", () => {
    expect(
        isPrime(2)
    ).toBe(true)
    expect(
        isPrime(3)
    ).toBe(true)
    expect(
        isPrime(5)
    ).toBe(true)
    expect(
        isPrime(7)
    ).toBe(true)
    expect(
        isPrime(23)
    ).toBe(true)
    expect(
        isPrime(31)
    ).toBe(true)
    expect(
        isPrime(73)
    ).toBe(true)

    expect(
        isPrime(1)
    ).toBe(false)
    expect(
        isPrime(4)
    ).toBe(false)
    expect(
        isPrime(9)
    ).toBe(false)
    expect(
        isPrime(15)
    ).toBe(false)
    expect(
        isPrime(21)
    ).toBe(false)
    expect(
        isPrime(27)
    ).toBe(false)
    expect(
        isPrime(30)
    ).toBe(false)
})