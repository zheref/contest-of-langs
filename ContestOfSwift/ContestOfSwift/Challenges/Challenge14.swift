//
//  Challenge14.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/02/25.
//

/*
 * Escribe una función que calcule y retorne el factorial de un número dado
 * de forma recursiva.
 */

enum Challenge14 {
    
    static func factorial(_ n: Int) -> Int {
        n > 1 ? n * factorial(n - 1) : 1
    }
    
}
