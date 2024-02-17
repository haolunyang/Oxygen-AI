//
//  ContentView.swift
//  Oxygen-AI
//
//  Created by Haolun Yang on 2/17/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Oxygen")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
