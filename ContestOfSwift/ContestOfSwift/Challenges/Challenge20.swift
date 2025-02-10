//
//  Challenge20.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 2/9/25.
//

import Foundation

enum Challenge20 {
    
    static func convertToMilliseconds(days: Int, hours: Int, minutes: Int, seconds: Int) -> Int {
        return
              days * 24 * 60 * 60 * 1000
            + hours * 60 * 60 * 1000
            + minutes * 60 * 1000
            + seconds * 1000
    }
    
}
