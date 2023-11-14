//
//  FullRocketRealityArea.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/11/13.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {
    @State private var audioController: AudioPlaybackController?
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "EquipmentFullrocketScene", in: realityKitContentBundle) else {
                fatalError("Unable to load scene model")
            }
//            let ambientAudioEntity = entity.findEntity(named: "AmbientAudio")
//            guard let resource = try? await AudioFileResource(named: "/Root/Space_wave", from: "Immersive.usda", in: realityKitContentBundle) else {
//                fatalError("Unable to find space.wave file")
//            }
//            audioController = ambientAudioEntity?.prepareAudio(resource)
//            audioController?.play()
            content.add(entity)
        }
//        .onDisappear(perform: {
//            audioController?.stop()
//        })
    }
}

#Preview {
    FullRocketRealityArea()
        .environment(ViewModel())
}
