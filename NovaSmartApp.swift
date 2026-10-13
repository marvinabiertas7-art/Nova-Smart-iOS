import SwiftUI

@main
struct NovaSmartApp: App {
    var body: some Scene {
        WindowGroup {
            NovaSmartEditor(script: .constant("print(\"Hello from Nova Smart!\" )"))
        }
    }
}

struct ContentView: View {
    @State private var script = """
    print("Hello from Nova Smart!")
    """

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color.black,
                    Color.purple,
                    Color.indigo
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("✦ NOVA SMART")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)

                Text("iPhone Developer Edition")
                    .foregroundStyle(.white.opacity(0.7))

                TextEditor(text: $script)
                    .frame(height: 260)
                    .scrollContentBackground(.hidden)
                    .padding()
                    .background(.black.opacity(0.6))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .foregroundStyle(.white)

                Text("Lua / Luau Script Editor")
                    .foregroundStyle(.white.opacity(0.8))

                Spacer()
            }
            .padding()
        }
    }
}

