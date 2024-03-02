import SwiftUI

struct NoteView: View {
    @AppStorage("prompt") var prompt: String = ""
    @State private var oxygenText = ""

    var body: some View {
        VStack {
            TextEditor(text: $oxygenText)
                .font(.title2)
                .toolbar {
                    ToolbarItem(placement: .bottomOrnament) {
                        Button {
                            prompt += "- " + oxygenText + "\n"
                        } label: {
                            Label("Add", systemImage: "brain")
                                .buttonBorderShape(.circle)
                        }
                    }
                }
                .clipShape(.rect(cornerRadius: 25, style: .continuous))
        }.padding(25)
    }
}

#Preview {
    NoteView()
}
