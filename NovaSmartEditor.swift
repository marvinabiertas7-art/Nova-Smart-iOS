
import SwiftUI

struct NovaSmartEditor: View {
    @Binding var script: String
    @State private var output = ""
    @State private var showOutput = false

    var body: some View {
        VStack(spacing: 16) {
            Text("✦ NOVA SMART")
                .font(.largeTitle.bold())
                .foregroundStyle(.white)

            Text("Lua / Luau Script Editor")
                .foregroundStyle(.white.opacity(0.7))

            TextEditor(text: $script)
                .font(.system(size: 16, design: .monospaced))
                .scrollContentBackground(.hidden)
                .foregroundStyle(.white)
                .padding(12)
                .frame(minHeight: 280)
                .background(
                    Color.white.opacity(0.12),
                    in: RoundedRectangle(cornerRadius: 18)
                )

            HStack {
                Button("Clear") {
                    script = ""
                }

                Spacer()

                Button("Check Code") {
                    output = script.isEmpty
                        ? "Editor is empty."
                        : "Script saved in editor. Roblox execution is not supported."
                    showOutput = true
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)

            if showOutput {
                Text(output)
                    .font(.footnote)
                    .foregroundStyle(.white)
            }
        }
        .padding()
        .background(
            LinearGradient(
                colors: [.black, .purple, .indigo],
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}
