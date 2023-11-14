import SwiftUI

// For Space Project
@main
struct SpaceApp: App {
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup("Main Areas", id: "Areas") {
            Areas()
                .environment(model)
        }
//        Change window style
//        .windowStyle(.plain)
        
//        Change default size of window
//        .defaultSize(CGSize(width: 200, height: 150))
        
        WindowGroup(id: model.capsuleRealityAreaId){
            CapsuleRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.7, height: 0.7, depth: 0.7, in: .meters)
        
        ImmersiveSpace(id: model.fullRocketRealityArea){
            FullRocketRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
        
        ImmersiveSpace(id: model.mixedRocketRealityArea){
            FullRocketRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.mixed), in: .mixed)
    }
}

// For My Gallarey
//@main
//struct VisionMyGalleryApp: App {
//    var body: some Scene {
//        WindowGroup(id: "Main") {
//            ContentView()
//        }
//
//        ImmersiveSpace(id: "airplane") {
//            AirplaneView()
//        }
//        
//        ImmersiveSpace(id: "gaming_room") {
//            GamingRoomView()
//        }
//        
//        ImmersiveSpace(id: "helicopter") {
//            HelicopterView()
//        }
//        
//        ImmersiveSpace(id: "house") {
//            HouseView()
//        }
//        
//        ImmersiveSpace(id: "rose") {
//            RoseView()
//        }
//        
//        ImmersiveSpace(id: "snow_house") {
//            SnowHouseView()
//        }
//    }
//}
