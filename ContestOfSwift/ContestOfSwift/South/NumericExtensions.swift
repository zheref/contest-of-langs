//
//  NumericExtensions.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/5/24.
//

import Foundation

extension Int {
    
    var fibonaccis: [Int]? {
        if self < 0 { return nil }
        if self == 0 { return [] }
        if self == 1 { return [0] }

        var sequence = [0, 1]

        while sequence.count < self {
            let lastPair = (
                first: sequence[sequence.count - 1],
                second: sequence[sequence.count - 2]
            )

            sequence.append(lastPair.first + lastPair.second)
        }

        return sequence
    }

}
