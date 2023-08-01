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
        WindowGroup(id: "Main") {
            ContentView()
        }

        ImmersiveSpace(id: "airplane") {
            AirplaneView()
        }
        
        ImmersiveSpace(id: "gaming_room") {
            GamingRoomView()
        }
        
        ImmersiveSpace(id: "helicopter") {
            HelicopterView()
        }
        
        ImmersiveSpace(id: "house") {
            HouseView()
        }
        
        ImmersiveSpace(id: "rose") {
            RoseView()
        }
        
        ImmersiveSpace(id: "snow_house") {
            SnowHouseView()
        }
    }
}
