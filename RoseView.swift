//
//  RoseView.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/08/01.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct RoseView: View {
    @Environment(\.dismissWindow) var dismissWindow

    var body: some View {
        RealityView { content in
            if let immersiveContentEntity = try? await Entity(named: "RoseScene", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)
            }
        }
        .onAppear {
            dismissWindow(id: "Main")
        }
    }
}

#Preview {
    RoseView()
}
