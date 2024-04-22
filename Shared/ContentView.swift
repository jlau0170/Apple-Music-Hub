//
//  ContentView.swift
//  Apple Music Hub
//
//  Created by Justin Lau on 2024-04-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    VStack {
                        Image(systemName: "hand.draw.fill")
                        Text("Muse")
                    }
                }
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

