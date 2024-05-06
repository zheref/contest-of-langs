//
//  Challenge0.swift
//  ContestOfSwift
//
//  Created by Sergio Daniel on 5/6/24.
//

import Foundation
import Combine

enum Challenge0 {

    static func performReactively() -> AnyCancellable {
        60.secondsCounter(on: RunLoop.main)
            .sink { second in
                print("Reactive Timer Ticked: \(second)")
            }
    }

}
