interface IPotentialAnagram {
    _: string;
    anagramOf: string;
}

function isWord({_, anagramOf}: IPotentialAnagram): boolean {
    if (_ === anagramOf) return false

    return _.toLowerCase()
            .split('')
            .sort()
            .join('') 
        === anagramOf
            .toLowerCase()
            .split('')
            .sort()
            .join('')
}

export { isWord }