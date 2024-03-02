import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var modes = ["Summarize", "Extend"]
    @State private var selectedMode = "Extend"
    @Environment(\.openWindow) private var openWindow
    @AppStorage("prompt") var prompt: String = ""
    @State private var responseText: String = ""
    @State private var isLoading = false
    @State private var animate = false
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    TextEditor(text: $prompt)
                        .font(.title3)
                        .glassBackgroundEffect(in: .rect(cornerRadius: 30, style: .continuous))
                        .frame(height: 220)
                        .padding(.bottom, 20)
                    TextEditor(text: $responseText)
                        .font(.title3)
                        .glassBackgroundEffect(in: .rect(cornerRadius: 30, style: .continuous))
                        .frame(height: 220)
                        .padding(.bottom, 20)
                }
                
                Picker("Please choose a mode", selection: $selectedMode) {
                    ForEach(modes, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(.segmented)
                    .toolbar {
                        ToolbarItem(placement: .bottomOrnament) {
                            Button {
                            } label: {
                                Label("Environment", systemImage: "mountain.2")
                                    .imageScale(.small)
                            }
                            .buttonBorderShape(.circle)
                        }
                        ToolbarItem(placement: .bottomOrnament) {
                            Button {
                                openWindow(id: "oxygen")
                            } label: {
                                Label("New", systemImage: "plus")
                            }
                            .buttonBorderShape(.circle)
                        }
                        ToolbarItem(placement: .bottomOrnament) {
                            Button {
                            } label: {
                                Label("History", systemImage: "clock.arrow.circlepath")
                            }
                            .buttonBorderShape(.circle)
                        }
                    }
            }
            .padding()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
