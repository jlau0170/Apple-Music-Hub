//
//  AddSongsView.swift
//  Apple Music Hub
//
//  Created by Justin Lau on 2024-04-21.
//

import SwiftUI

struct AddSongsView: View {
    @State private var animateGradient = false
    
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
            
            Text("Hello from Add Songs View!")
        }
    }
}

struct AddSongsView_Previews: PreviewProvider {
    static var previews: some View {
        AddSongsView()
    }
}
