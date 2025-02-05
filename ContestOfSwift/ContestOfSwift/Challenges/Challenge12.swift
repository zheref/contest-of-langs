//
//  Challenge12.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/02/25.
//

/*
 * Crea una función que reciba dos cadenas como parámetro (str1, str2)
 * e imprima otras dos cadenas como salida (out1, out2).
 * - out1 contendrá todos los caracteres presentes en la str1 pero NO
 *   estén presentes en str2.
 * - out2 contendrá todos los caracteres presentes en la str2 pero NO
 *   estén presentes en str1.
 */

enum Challenge12 {
    
    static func outerRim(str1: String, str2: String) -> (out1: String, out2: String) {
        let set1 = Set(str1)
        let set2 = Set(str2)
        
        let sub1 = Array(set1.subtracting(set2))
        let sub2 = Array(set2.subtracting(set1))
        
        return (
            out1: str1.filter { sub1.contains(String($0)) }
                      .map(String.init)
                      .joined(separator: ""),
            out2: str2.filter { sub2.contains(String($0)) }
                      .map(String.init)
                      .joined(separator: "")
        )
    }
    
}
