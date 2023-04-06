//
//  PoopsApp.swift
//  Poops
//
//  Created by howard on 2021/12/12.
//

import SwiftUI

@main
struct PoopsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var homeViewModel = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(homeViewModel)
        }
    }
}
