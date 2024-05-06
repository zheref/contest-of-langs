//
//  LanguageExtensions.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/5/24.
//

import Foundation

// TO TEST
public func when<T>(_ rules: [(Bool, T)], fallbackingWith fallback: T) -> T {
    rules.first { $0.0 }?.1 ?? fallback
}
