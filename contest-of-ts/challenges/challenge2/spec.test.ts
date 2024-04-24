import { expect, test } from "bun:test"
import { isWord } from "."

test("is word anagram of another word", () => {
    expect(
        isWord({_: 'listen', anagramOf: 'silent'})
    ).toBe(true)
    expect(
        isWord({_: 'triangle', anagramOf: 'integral'})
    ).toBe(true)
    expect(
        isWord({_: 'amor', anagramOf: 'roma'})
    ).toBe(true)
    expect(
        isWord({_: 'sergio', anagramOf: 'riesgo'})
    ).toBe(true)
    expect(
        isWord({_: 'delira', anagramOf: 'lidera'})
    ).toBe(true)
    expect(
        isWord({_: 'ballena', anagramOf: 'llenaba'})
    ).toBe(true)
    expect(
        isWord({_: 'valora', anagramOf: 'Alvaro'})
    ).toBe(true)
    expect(
        isWord({_: 'PRAGA', anagramOf: 'pagar'})
    ).toBe(true)

    expect(
        isWord({_: 'amor', anagramOf: 'amor'})
    ).toBe(false)
    expect(
        isWord({_: 'edwin', anagramOf: 'winned'})
    ).toBe(false)
    expect(
        isWord({_: 'obito', anagramOf: 'tobi'})
    ).toBe(false)
    expect(
        isWord({_: 'sasuke', anagramOf: 'itachi'})
    ).toBe(false)
    expect(
        isWord({_: 'maria', anagramOf: 'rima'})
    ).toBe(false)
    expect(
        isWord({_: 'alborota', anagramOf: 'lobo rata'})
    ).toBe(false)
})