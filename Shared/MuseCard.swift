//
//  MuseCard.swift
//  Museic
//
//  Created by Justin Lau on 2024-04-21.
//

import SwiftUI

struct MuseCard: View {
    var body: some View {
        ZStack {
            CustomBlurView(blurEffect: .systemUltraThinMaterialDark) { view in
            }
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .stroke(LinearGradient(gradient: Gradient(colors: [.white.opacity(0.1), .white.opacity(0.1), .white.opacity(0.1), .white.opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing),
                    lineWidth: 2
                )
        }
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 100, trailing: 20))
        .frame(maxHeight: .infinity)
    }
}

// Custom Blur View
struct CustomBlurView: UIViewRepresentable {
    var blurEffect: UIBlurEffect.Style
    var onChange : (UIVisualEffectView)->()
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: blurEffect))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        DispatchQueue.main.async{
            onChange(uiView)
        }
    }
}

// Adjust blur radius in the view
extension UIVisualEffectView {
    var backDrop: UIView?{
        return subView(forClass: NSClassFromString("_UIVisualEffectBackdropView")) // Private class
    }
}

// Helper method for grabbing sub view for a certain class
extension UIView {
    func subView(forClass: AnyClass?)->UIView?{
        return subviews.first { view in
            type(of: view) == forClass
        }
    }
}

struct MuseSongCard_Previews: PreviewProvider {
    static var previews: some View {
        MuseCard()
    }
}
