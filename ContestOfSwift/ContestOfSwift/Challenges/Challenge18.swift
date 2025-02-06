//
//  Challenge18.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 6/02/25.
//

enum Challenge18 {
    
    struct PathBlock {
        let symbol: Character
        let expectedAction: String
        let wrongedSymbol: Character
    }
    
    static func evaluateRacePerformance(using route: [String], on path: String) -> Bool {
        let pathBlocks: [PathBlock] = [
            .init(symbol: "_", expectedAction: "run", wrongedSymbol: "x"),
            .init(symbol: "|", expectedAction: "jump", wrongedSymbol: "/")
        ]
        
        var progression = ""
        let result =
            zip(route.map { $0.lowercased() }, path)
                .reduce(true) { partialResult, pair in
                    let (action, currentSymbol) = pair
                    guard let pathBlock = pathBlocks.first(where: { $0.symbol == currentSymbol }) else {
                        progression.append(" ")
                        return partialResult && false
                    }
                    if action == pathBlock.expectedAction {
                        progression.append(currentSymbol)
                        return partialResult && true
                    } else {
                        progression.append(pathBlock.wrongedSymbol)
                        return partialResult && false
                    }
                }
        
        print(progression)
        return result
    }
    
}
