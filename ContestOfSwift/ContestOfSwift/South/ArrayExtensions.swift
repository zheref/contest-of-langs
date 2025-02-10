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

    // TO TEST
    static func + (left: Array<Element>, right: Element) -> Array<Element> {
        left.appending(element: right)
    }

}

public extension Collection {
    // Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}

public extension Collection where Element: Equatable {

    // TO TEST
    func has(element: Element) -> Bool {
        return self.contains { $0 == element }
    }
    
    var allWithSameElement: Bool {
        guard count > 1 else {
            return true
        }
        
        let firstElement = self.first!
        return self.allSatisfy { $0 == firstElement }
    }

}

public extension Collection where Element: Collection, Index == Int, Element.Index == Int {
    
    func transposed() -> [Column] {
        guard let maxCount = map(\.count).max() else {
            return []
        }
        
        return (0..<maxCount).map { index in self.compactMap { $0[safe: index] } }
    }
    
    var diagonal: Cross {
        guard let maxCount = map(\.count).max() else {
            return []
        }
        
        var diag = Cross()
        var index = 0
        while index < maxCount {
            guard let item = self[safe: index]?[safe: index] else {
                return diag
            }
            diag.append(item)
            index += 1
        }
        
        return diag
    }
    
    typealias Cell = Element.Element
    typealias Cross = [Cell]
    typealias Row = Cross
    typealias Column = Cross
    
    
    var crossings: [Cross] {
        var crosses = [Cross]()
        let original = self as! [Cross]
        let trans = original.transposed()
        
        crosses.append(contentsOf: original)
        crosses.append(contentsOf: trans)
        crosses.append(self.diagonal)
        crosses.append(trans.diagonal)
        
        return crosses
    }
    
}
