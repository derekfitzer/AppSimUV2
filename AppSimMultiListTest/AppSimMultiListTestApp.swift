//
//  AppSimMultiListTestApp.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/5/25.
//

import SwiftUI

@main


struct AppSimMultiListTestApp: App {
    
    @StateObject private var appState = AppState()
    
    
    var body: some Scene {
        WindowGroup {
            IntroView()
                .environmentObject(appState)
          //  ContentView()
        }
    }
}
