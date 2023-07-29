//
//  VisionMyGalleryApp.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/07/29.
//

import SwiftUI

@main
struct VisionMyGalleryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
