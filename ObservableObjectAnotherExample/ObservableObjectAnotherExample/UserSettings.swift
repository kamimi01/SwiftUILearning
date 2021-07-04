//
//  UserSettings.swift
//  ObservableObjectAnotherExample
//
//  Created by Mika Urakawa on 2021/07/04.
//

import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject {
    
    @Published var score: Int = 0
}
