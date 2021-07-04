//
//  ContentView.swift
//  Understanding-ObservableObject
//
//  Created by Mika Urakawa on 2021/07/04.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fancyTimer = FancyTimer()
    
    var body: some View {
        Text("\(self.fancyTimer.value)")
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
