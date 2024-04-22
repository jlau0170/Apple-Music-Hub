//
//  Main.swift
//  Museic
//
//  Created by Justin Lau on 2024-04-21.
//

import SwiftUI

struct MainView: View {
    @State private var animateGradient = false
    @State private var isPlaying = false;
    
    var body: some View {
        let gradient1 = Gradient(colors: [.blue, .purple])

        ZStack {
            LinearGradient(gradient: gradient1, startPoint: .topLeading, endPoint: .bottomTrailing)
                .hueRotation(.degrees(animateGradient ? 90 : 0))
                .onAppear {
                    withAnimation(.easeInOut(duration: 5.0).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
                .ignoresSafeArea()
            VStack {
                renderHeaderText()
                MuseCard()
            }
            Text("Hello from Main View!")
        }
    }
    
    func renderHeaderText() -> HStack<TupleView<(Text, Image)>> {
        if (isPlaying) {
            return HStack {
                Text("Now playing")
                Image(systemName: "speaker.wave.2.fill")
            }
        } else {
            return HStack {
                Text("The (Muse)ic")
                Image(systemName: "null")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
