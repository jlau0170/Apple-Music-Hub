//
//  LandingPage.swift
//  Shared
//
//  Created by Justin Lau on 2024-04-18.
//

import SwiftUI

struct LandingPageView: View {
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
            
            VStack(alignment: .leading) {
                HStack(alignment: .firstTextBaseline) {
                    Text("(Muse)ic").font(.system(size: 48)).fontWeight(.bold)
                        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                }
                
                Text("The new easy way of discovering music for you.").font(.body).foregroundColor(Color.black).padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
                
                HStack {
                    Spacer()
                    Button(action: signIn) {
                        Text("Sign in with")
                        Image("apple-music-logo").resizable().aspectRatio(contentMode: .fit).frame(width: 60).padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 12)
                    .accentColor(Color.black)
                    .background(Color.blue)
                    .cornerRadius(12.0)
                    Spacer()
                }.padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
}

func signIn() {
    // Sign into Apple Music
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
