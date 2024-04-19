//
//  ContentView.swift
//  Shared
//
//  Created by Justin Lau on 2024-04-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Apple Music Hub").font(.largeTitle).fontWeight(.bold)
            Text("The first revoluntionary AM Hub, where you can import and learn all about your music history, tendencies, and discover new tunes for you.").font(.body).foregroundColor(Color.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
