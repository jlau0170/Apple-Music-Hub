//
//  MuseicApp.swift
//  Shared
//
//  Created by Justin Lau on 2024-04-18.
//

import SwiftUI

@main

struct MuseicApp: App {
    @StateObject var currUser = User(firstName: "First", lastName: "Last", isAuthorized: false)
    
    var body: some Scene {
        WindowGroup {
            if (!currUser.isAuthorized) {
                LandingPageView().environmentObject(currUser)
            } else {
                ContentView().environmentObject(currUser)
            }
        }
    }
}
