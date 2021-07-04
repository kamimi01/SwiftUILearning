//
//  Dish.swift
//  HelloBinding
//
//  Created by Mika Urakawa on 2021/07/04.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let isSpicy: Bool
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Filet Mignon", imageURL: "akiyoshi_01", isSpicy: true),
            Dish(name: "Spagettie Meet Source", imageURL: "akiyoshi_02", isSpicy: false),
            Dish(name: "Sushi", imageURL: "akiyoshi_03", isSpicy: true),
            Dish(name: "Chocolate", imageURL: "spain", isSpicy: false)
        ]
    }
}
