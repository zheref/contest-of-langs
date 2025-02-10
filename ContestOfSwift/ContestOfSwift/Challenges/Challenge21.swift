//
//  Challenge21.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 2/9/25.
//

import Foundation

enum Challenge21 {
    
    static func sumAndWait(_ a: Int, _ b: Int, waiting seconds: Int) async -> Int {
        try? await Task.sleep(nanoseconds: UInt64(seconds * 1_000_000_000))
        return a + b
    }
    
}
