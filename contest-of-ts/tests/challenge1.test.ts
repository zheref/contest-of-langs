import { expect, test } from "bun:test"
import { isNumberMultipleOf } from "../challenges/challenge1"

test("Challenge 1: FizzBuzz", () => {
    expect(
        isNumberMultipleOf(1, 1)
    ).toBe(true)
    expect(
        isNumberMultipleOf(2, 2)
    ).toBe(true)
    expect(
        isNumberMultipleOf(6, 2)
    ).toBe(true)
    expect(
        isNumberMultipleOf(20, 5)
    ).toBe(true)
    expect(
        isNumberMultipleOf(15, 5)
    ).toBe(true)
    expect(
        isNumberMultipleOf(21, 7)
    ).toBe(true)
    expect(
        isNumberMultipleOf(72, 4)
    ).toBe(true)
    expect(
        isNumberMultipleOf(81, 9)
    ).toBe(true)
    expect(
        isNumberMultipleOf(90, 10)
    ).toBe(true)

    expect(
        isNumberMultipleOf(3, 2)
    ).toBe(false)
    expect(
        isNumberMultipleOf(5, 2)
    ).toBe(false)
    expect(
        isNumberMultipleOf(7, 2)
    ).toBe(false)
    expect(
        isNumberMultipleOf(21, 5)
    ).toBe(false)
    expect(
        isNumberMultipleOf(72, 5)
    ).toBe(false)
    expect(
        isNumberMultipleOf(81, 2)
    ).toBe(false)
    expect(
        isNumberMultipleOf(90, 8)
    ).toBe(false)
})