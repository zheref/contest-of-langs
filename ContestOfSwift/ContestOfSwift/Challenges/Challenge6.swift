//
//  Challenge6.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/28/24.
//

/*
 * Crea un programa que se encargue de calcular el aspect ratio de una
 * imagen a partir de una url.
 * - Url de ejemplo:
 *   https://raw.githubusercontent.com/mouredevmouredev/master/mouredev_github_profile.png
 * - Por ratio hacemos referencia por ejemplo a los "16:9" de una
 *   imagen de 1920*1080px.
 */

import AppKit

enum CustomError6: Error {
    case notAnImage
}

func downloadImage(fromURL url: URL) async throws -> NSImage? {
    let (data, _) = try await URLSession.shared.data(from: url)
    return NSImage(data: data)
}

func calculateAspectRatio(fromURL url: URL) async throws -> (w: Int, h: Int)? {
    guard let image = try await downloadImage(fromURL: url) else { throw CustomError6.notAnImage }
    let intSize = (width: Int(image.size.width), height: Int(image.size.height))
    let gcd = greatestCommonDivisor(from: intSize.width, and: intSize.height)
    return (intSize.width / gcd, intSize.height / gcd)
}

func greatestCommonDivisor(from numerator: Int, and divisor: Int) -> Int {
    var numerator = numerator
    var divisor = divisor
    while divisor != 0 {
        (numerator, divisor) = (divisor, numerator % divisor)
    }
    return abs(numerator)
}
