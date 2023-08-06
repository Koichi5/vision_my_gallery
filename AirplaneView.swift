import SwiftUI
import RealityKit
import RealityKitContent

struct AirplaneView: View {
    @Environment(\.dismissWindow) var dismissWindow

    var body: some View {
        RealityView { content in
            if let immersiveContentEntity = try? await Entity(named: "AirplaneScene", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)
            }
        }
        .onAppear {
            dismissWindow(id: "Main")
        }
    }
}

#Preview {
    AirplaneView()
}
