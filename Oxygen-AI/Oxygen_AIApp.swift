//
//  Oxygen_AIApp.swift
//  Oxygen-AI
//
//  Created by Haolun Yang on 2/17/24.
//

import SwiftUI

@main
struct Oxygen_AIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.defaultSize(width: 600, height: 600)
        
        WindowGroup(id: "oxygen") {
            NoteView()
        }.defaultSize(width: 400, height: 400)
    }
}
