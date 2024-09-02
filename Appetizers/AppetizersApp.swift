//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Vika on 08.05.24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
