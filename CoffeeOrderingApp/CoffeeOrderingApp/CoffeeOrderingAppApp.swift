//
//  CoffeeOrderingAppApp.swift
//  CoffeeOrderingApp
//
//  Created by Mika Urakawa on 2021/07/05.
//

import SwiftUI

@main
struct CoffeeOrderingAppApp: App {
    
    init() {
        setupAppearance()
    }
    
    private func setupAppearance() {
        UINavigationBar.appearance().backgroundColor = UIColor.purple
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
