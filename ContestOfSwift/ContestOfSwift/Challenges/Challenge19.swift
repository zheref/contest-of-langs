//
//  Challenge19.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 2/9/25.
//

enum Challenge19 {
    
    enum Error: Swift.Error {
        case unevenMatrix
    }
    
    static func evaluateTikTakToeGame(_ gameMatrix: [[Character]]) throws -> Character? {
        guard gameMatrix.count == gameMatrix[0].count else {
            throw Error.unevenMatrix
        }
        
        let matches = gameMatrix
                            .crossings
                            .filter { $0.allWithSameElement }
        
        if matches.count > 1 {
            let matchedSymbols = matches.map(\.first)
            return matchedSymbols.allWithSameElement ? matchedSymbols.first! : "T"
        } else if matches.count == 1 {
            return matches.first?.first
        } else {
            return nil
        }
    }
    
}
