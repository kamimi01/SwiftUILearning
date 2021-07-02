//
//  ContentView.swift
//  Hello-SwiftUI
//
//  Created by Mika Urakawa on 2021/07/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            
            Image("hokkaido-sea")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50)
                .padding(.all)
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Text("First Line")
                .font(.largeTitle)
                .foregroundColor(.green)
            Text("Second Line")
                .font(.title)
                .foregroundColor(.orange)
            
            HStack {
                Text("Left Side")
                Text("Right Side")
                    .padding(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
