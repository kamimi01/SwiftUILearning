//
//  ObservableObjectAnotherExampleApp.swift
//  ObservableObjectAnotherExample
//
//  Created by Mika Urakawa on 2021/07/04.
//

import SwiftUI

@main
struct ObservableObjectAnotherExampleApp: App {
    var body: some Scene {
        WindowGroup {
            
            let userSettings = UserSettings()
            ContentView().environmentObject(userSettings)
        }
    }
}
