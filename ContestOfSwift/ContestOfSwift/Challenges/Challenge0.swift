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
        return 60.secondsCounter(on: .main)
            .sink { second in
                print("Reactive Timer Ticked: \(second)")
            }
    }

    @MainActor
    static func performConcurrently() async {
        for await second in 60.secondsCount() {
            print("Concurrent Timer Ticked: \(second)")
        }
    }

}
