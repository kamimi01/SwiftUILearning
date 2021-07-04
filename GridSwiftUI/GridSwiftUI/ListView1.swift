//
//  ListView1.swift
//  GridSwiftUI
//
//  Created by Mika Urakawa on 2021/07/03.
//

import SwiftUI

struct ListView1: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        
        let chunkedDishes = dishes.chunked(into: 3)
        
        return List {
            // 行
            ForEach(0..<chunkedDishes.count) { index in
                HStack {
                    
                    ForEach(chunkedDishes[index]) { dish in
                        Image(dish.imageURL)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .scaledToFit()
                    }
                    
                }
            }
            
        }
    }
}

struct ListView1_Previews: PreviewProvider {
    static var previews: some View {
        ListView1()
    }
}
