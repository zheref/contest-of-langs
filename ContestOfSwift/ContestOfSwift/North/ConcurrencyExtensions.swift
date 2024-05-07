//
//  ConcurrencyExtensions.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/6/24.
//

import Foundation

extension Int {
    func secondsCount() -> AsyncStream<Int> {
        .init { continuation in
            var count = 0
            let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
                count += 1
                continuation.yield(count)
                if count >= self {
                    $0.invalidate()
                    continuation.finish()
                }
            }
            RunLoop.main.add(timer, forMode: .common)
        }
    }
}

struct AsyncCounter {

}
