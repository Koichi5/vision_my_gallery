//
//  ImmersiveView.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/07/29.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct MyGalleryView: View {
    @Environment(\.dismissWindow) var dismissWindow

    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            if let immersiveContentEntity = try? await Entity(named: "MyGallery", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)

//                 Add an ImageBasedLight for the immersive content
//                if let imageBasedLightURL = Bundle.main.url(forResource: "ImageBasedLight", withExtension: "exr"),
//                   let imageBasedLightImageSource = CGImageSourceCreateWithURL(imageBasedLightURL as CFURL, nil),
//                   let imageBasedLightImage = CGImageSourceCreateImageAtIndex(imageBasedLightImageSource, 0, nil),
//                   let imageBasedLightResource = try? await EnvironmentResource.generate(fromEquirectangular: imageBasedLightImage) {
//                    let imageBasedLightSource = ImageBasedLightComponent.Source.single(imageBasedLightResource)
//
//                    let imageBasedLight = Entity()
//                    imageBasedLight.components.set(ImageBasedLightComponent(source: imageBasedLightSource))
//                    content.add(imageBasedLight)
//
//                    immersiveContentEntity.components.set(ImageBasedLightReceiverComponent(imageBasedLight: imageBasedLight))
//                }

//                 Put skybox here.  See example in World project available at
//                 https://developer.apple.com/
            }
        }
        .onAppear {
            dismissWindow(id: "Main")
        }
    }
}

#Preview {
    MyGalleryView()
        .previewLayout(.sizeThatFits)
}
