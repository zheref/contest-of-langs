//
//  main.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 4/23/24.
//

import Foundation

print("Challenge 0: Seconds Counter")
let cancellable = Challenge0.performReactively()
Task { await Challenge0.performConcurrently() }
RunLoop.main.run(until: .now + 61)

print("Challenge 1: Fizz Buzz")
Challenge1.perform()

print("Challenge 3: Fibonacci Sequence")
Challenge3.perform()

print("Challenge 4: Prime Numbers")
Challenge4.perform()
