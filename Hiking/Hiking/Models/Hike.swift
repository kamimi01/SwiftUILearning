//
//  Hike.swift
//  Hiking
//
//  Created by Mika Urakawa on 2021/07/02.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Trail", imageURL: "sal", miles: 6),
            Hike(name: "Harry Mountain", imageURL: "tom", miles: 5.8),
            Hike(name: "Falls", imageURL: "tam", miles: 5)
        ]
    }
}
