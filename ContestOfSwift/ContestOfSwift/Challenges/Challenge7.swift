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
        if string.isEmpty { return string }
        let characters = string.split(separator: "")
        var inverted = ""
        for i in 1...string.count {
            inverted += characters[string.count - i]
        }
        return inverted
    }

}
