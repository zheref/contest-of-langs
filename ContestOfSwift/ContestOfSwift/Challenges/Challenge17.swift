//
//  Challenge17.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 6/02/25.
//

enum Challenge17 {
    
    static func capitalize(str: String) -> String {
        str.split(separator: " ")
           .map { w in
               if let firstIndex = w.firstIndex(where: { _ in true }) {
                   var changed = w
                   changed[firstIndex] = Character(w[firstIndex].uppercased())
                   return String(changed)
               } else {
                   return String(w)
               }
           }
           .joined(separator: " ")
    }
    
}
