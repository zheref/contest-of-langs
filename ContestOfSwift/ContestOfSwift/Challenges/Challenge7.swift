//
//  Challenge7.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/29/24.
//

/*
 * Crea un programa que invierta el orden de una cadena de texto
 * sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 */

import Foundation

enum Challenge7 {
    
    static func invert(string: String) -> String {
        let characters = string.split(separator: "")
        var inverted = [String]()
        var i = characters.count - 1
        while (i >= 0) {
            inverted.append(String(characters[i]))
            i -= 1
        }
        return inverted.joined()
    }

}
