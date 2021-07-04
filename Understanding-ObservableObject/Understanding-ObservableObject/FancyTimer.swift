//
//  FancyTimer.swift
//  Understanding-ObservableObject
//
//  Created by Mika Urakawa on 2021/07/04.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject {
    
    @Published var value: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
    
}
