import SwiftUI
import RealityKit
import RealityKitContent

struct AirplaneView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissWindow) var dismissWindow

    var body: some View {
        VStack {
            RealityView { content in
                if let immersiveContentEntity = try? await Entity(named: "AirplaneScene", in: realityKitContentBundle) {
                    content.add(immersiveContentEntity)
                }
            }
            .onAppear {
                dismissWindow(id: "Main")
            }
            Button(action: {}) {
                Text("Close")
            }.position()
        }
    }
}

#Preview {
    AirplaneView()
}
