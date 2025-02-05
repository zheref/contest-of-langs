//
//  Challenge15.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/02/25.
//

/*
 * Escribe una función que calcule si un número dado es un número de Armstrong
 * (o también llamado narcisista).
 * Si no conoces qué es un número de Armstrong, debes buscar información
 * al respecto.
 */

import Foundation

enum Challenge15 {
    
    static func isArmstrong(_ n: Int) -> Bool {
        let strNum = "\(n)"
        
        var sum = 0
        for d in strNum {
            let digitNumber = Int("\(d)")!
            sum += Int(powl(Double(digitNumber), Double(strNum.count)))
        }
        
        return sum == n
    }
    
}
