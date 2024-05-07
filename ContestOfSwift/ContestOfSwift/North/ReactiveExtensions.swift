//
//  ReactiveExtensions.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/6/24.
//

import Foundation
import Combine

extension Int {
    // TO TEST
    func secondsCounter(on loop: RunLoop = .main) -> AnyPublisher<Int, Never> {
        Timer
            .publish(every: 1.0, on: loop, in: .common)
            .autoconnect()
            .map { _ in return Date() }
            .scan(0) { seconds, _ in seconds + 1 }
            .prefix(self)
            .eraseToAnyPublisher()
    }
}
