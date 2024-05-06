//
//  ArrayExtensions.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/5/24.
//

import Foundation

public extension Array where Element: Any {

    // TO TEST
    func appending(element: Element) -> [Element] {
        var newer = self
        newer.append(element)
        return newer
    }
}

public extension Collection where Element: Equatable {

    // TO TEST
    func has(element: Element) -> Bool {
        return self.contains { $0 == element }
    }

}
