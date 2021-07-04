//
//  ContentView.swift
//  Hello-Binding
//
//  Created by Mika Urakawa on 2021/07/04.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    private func printName() {
        print(self.name)
    }
    
    var body: some View {
        VStack {
            Text(name)
            TextField("Enter Text", text: $name)
                .padding(12)
            
            Button(action: printName) {
                Text("Show name value")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
