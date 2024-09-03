//
//  ContentView.swift
//  Appetizers
//
//  Created by Vika on 08.05.24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @StateObject var order = Order()
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color.brandPrimary)
        .environmentObject(order)
    }
}

#Preview {
    AppetizerTabView()
}
