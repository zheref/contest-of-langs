import { expect, test } from "bun:test"
import { isWord } from "."

test("Challenge 2: Is word anagram of another word", () => {
    expect(
        isWord({$: 'listen', anagramOf: 'silent'})
    ).toBe(true)
    expect(
        isWord({$: 'triangle', anagramOf: 'integral'})
    ).toBe(true)
    expect(
        isWord({$: 'amor', anagramOf: 'roma'})
    ).toBe(true)
    expect(
        isWord({$: 'sergio', anagramOf: 'riesgo'})
    ).toBe(true)
    expect(
        isWord({$: 'delira', anagramOf: 'lidera'})
    ).toBe(true)
    expect(
        isWord({$: 'ballena', anagramOf: 'llenaba'})
    ).toBe(true)
    expect(
        isWord({$: 'valora', anagramOf: 'Alvaro'})
    ).toBe(true)
    expect(
        isWord({$: 'PRAGA', anagramOf: 'pagar'})
    ).toBe(true)

    expect(
        isWord({$: 'amor', anagramOf: 'amor'})
    ).toBe(false)
    expect(
        isWord({$: 'edwin', anagramOf: 'winned'})
    ).toBe(false)
    expect(
        isWord({$: 'obito', anagramOf: 'tobi'})
    ).toBe(false)
    expect(
        isWord({$: 'sasuke', anagramOf: 'itachi'})
    ).toBe(false)
    expect(
        isWord({$: 'maria', anagramOf: 'rima'})
    ).toBe(false)
    expect(
        isWord({$: 'alborota', anagramOf: 'lobo rata'})
    ).toBe(false)
})