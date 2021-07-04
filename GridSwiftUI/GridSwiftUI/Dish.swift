//
//  File.swift
//  GridSwiftUI
//
//  Created by Mika Urakawa on 2021/07/03.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Filet Mignon", price: 35, imageURL: "hokkaido_sea"),
            Dish(name: "Spagettie", price: 12, imageURL: "hokkaido_sea"),
            Dish(name: "Sushi", price: 12, imageURL: "hokkaido_sea"),
            Dish(name: "Chocolate", price: 8, imageURL: "hokkaido_sea")
        ]
    }
}
