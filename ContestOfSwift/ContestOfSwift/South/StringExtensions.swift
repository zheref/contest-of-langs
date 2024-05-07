//
//  StringExtensions.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/5/24.
//

import Foundation

public extension String {

    func isAnagram(of string: String) -> Bool {
        lowercased().sorted() == string.lowercased().sorted()
    }

    var isBalanced: Bool {
        let symbols = ["(": ")", "[": "]", "{": "}", "<": ">"]
        let characters = split(separator: "")
        var balance = [String]()

        for character in characters {
            let (isOpening, isClosing) = (
                isOpening: symbols.keys.has(element: character.asString),
                isClosing: symbols.values.has(element: character.asString)
            )

            if isOpening || isClosing {
                if isOpening {
                    balance.append(character.asString)
                } else if balance.isEmpty || character != symbols[balance.removeLast()]! {
                    return false
                }
            } else { continue }
        }

        return balance.isEmpty
    }

    var inverted: String {
        if isEmpty { return self }
        let characters = split(separator: "")
        var inverted = ""
        for i in 1...count {
            inverted += characters[count - i]
        }
        return inverted
    }

}

public extension String.SubSequence {

    var asString: String { String(self) }

}
