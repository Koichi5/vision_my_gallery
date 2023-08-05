//
//  SnowHouseView.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/08/01.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SnowHouseView: View {
    @Environment(\.dismissWindow) var dismissWindow
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace

    var body: some View {
        VStack {
            RealityView { content in
                if let immersiveContentEntity = try? await Entity(named: "SnowHouseScene", in: realityKitContentBundle) {
                    content.add(immersiveContentEntity)
                }
            }
            .onAppear {
                dismissWindow(id: "Main")
            }
            Button(action: {
                Task {
                    await dismissImmersiveSpace()
                }
            }) {
                Text("Back")
            }
            Spacer()
        }
    }
}

#Preview {
    SnowHouseView()
}
