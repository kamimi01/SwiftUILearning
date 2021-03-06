//
//  ContentView.swift
//  ObservableObjectAnotherExample
//
//  Created by Mika Urakawa on 2021/07/04.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userSetings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSetings.score)")
                .font(.largeTitle)
            
            Button("Increment Score") {
                self.userSetings.score += 1
            }
            
            FancyScoreView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSettings())
    }
}
