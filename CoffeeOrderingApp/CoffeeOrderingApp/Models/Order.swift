//
//  Order.swift
//  CoffeeOrderingApp
//
//  Created by Mika Urakawa on 2021/07/05.
//

import Foundation

struct Order: Codable {
    let name: String
    let coffeeName: String
    let total: Double
    let size: String
}
