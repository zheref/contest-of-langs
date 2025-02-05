//
//  Challenge16.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/02/25.
//

/*
 * Crea una función que calcule y retorne cuántos días hay entre dos cadenas
 * de texto que representen fechas.
 * - Una cadena de texto que representa una fecha tiene el formato "dd/MM/yyyy".
 * - La función recibirá dos String y retornará un Int.
 * - La diferencia en días será absoluta (no importa el orden de las fechas).
 * - Si una de las dos cadenas de texto no representa una fecha correcta se
 *   lanzará una excepción.
 */

import Foundation

enum Challenge16 {
    
    static func daysBetween(_ d1: String, _ d2: String) throws -> Int {
        let expectedFormat = "dd/MM/yyyy"
        let dateFormatter = DateFormatter()
        
        
        
        dateFormatter.dateFormat = expectedFormat
        dateFormatter.isLenient = false
        dateFormatter.doesRelativeDateFormatting = false
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        func usesCorrectSeparator(ds: String) -> Bool {
            ds.split(separator: "/").count == 3
        }
        
        guard usesCorrectSeparator(ds: d1), usesCorrectSeparator(ds: d2) else {
            throw NSError(domain: "Invalid date format", code: 1001, userInfo: nil)
        }
        
        guard let date1 = dateFormatter.date(from: d1),
              let date2 = dateFormatter.date(from: d2)
        else {
            throw NSError(domain: "Invalid date format", code: 1001, userInfo: nil)
        }
        
        var components: DateComponents!
        if date1 > date2 {
            components = Calendar.current.dateComponents([.day],
                                                         from: date2,
                                                         to: date1)
        } else {
            components = Calendar.current.dateComponents([.day],
                                                             from: date1,
                                                             to: date2)
        }
        
        return components.day ?? 0
    }
    
}
