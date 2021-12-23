//
//  RenderingCustomTabBarIconWithSwiftApp.swift
//  RenderingCustomTabBarIconWithSwift
//
//  Created by San Engineer on 22/12/21.
//

import SwiftUI

@main
struct RenderingCustomTabBarIconWithSwiftApp: App {
    
    let state = State()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(state)
        }
    }
}
