import { expect, test } from "bun:test"
import { isNumber } from "."

test("Challenge 1: FizzBuzz", () => {
    expect(
        isNumber({$: 1, multipleOf: 1})
    ).toBe(true)
    expect(
        isNumber({$: 2, multipleOf: 2})
    ).toBe(true)
    expect(
        isNumber({$: 6, multipleOf: 2})
    ).toBe(true)
    expect(
        isNumber({$: 20, multipleOf: 5})
    ).toBe(true)
    expect(
        isNumber({$: 15, multipleOf: 5})
    ).toBe(true)
    expect(
        isNumber({$: 21, multipleOf: 7})
    ).toBe(true)
    expect(
        isNumber({$: 72, multipleOf: 4})
    ).toBe(true)
    expect(
        isNumber({$: 81, multipleOf: 9})
    ).toBe(true)
    expect(
        isNumber({$: 90, multipleOf: 10})
    ).toBe(true)

    expect(
        isNumber({$: 3, multipleOf: 2})
    ).toBe(false)
    expect(
        isNumber({$: 5, multipleOf: 2})
    ).toBe(false)
    expect(
        isNumber({$: 7, multipleOf: 2})
    ).toBe(false)
    expect(
        isNumber({$: 21, multipleOf: 5})
    ).toBe(false)
    expect(
        isNumber({$: 72, multipleOf: 5})
    ).toBe(false)
    expect(
        isNumber({$: 81, multipleOf: 2})
    ).toBe(false)
    expect(
        isNumber({$: 90, multipleOf: 8})
    ).toBe(false)
})