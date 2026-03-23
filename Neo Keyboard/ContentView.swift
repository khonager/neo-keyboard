//
//  ContentView.swift
//  Neo Keyboard
//
//  Created by Jean-Pierre Höhmann on 19.03.22.
//
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Neo Keyboard")
                    .font(.headline)
            Text(
                    """
                    This app provides on-screen keyboards with neo-layout and bone-layout. You can enable these \
                    keyboards in the preferences app on your device.
                    """
            )
                    .multilineTextAlignment(.center)
        }
            .padding()
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView_Previews.previews)
    }
    #endif
}
