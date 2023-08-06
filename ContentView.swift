import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var showImmersiveSpace = false
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    let images = ["airplane", "gaming_room", "helicopter", "house", "rose", "snow_house"]

    var body: some View {
        NavigationSplitView {
            List {
                Text("Item")
            }
            .navigationTitle("Wellcome to My Gallery !")
        } detail: {
            ScrollView() {
                LazyVGrid(
                    columns: Array(repeating: .init(.flexible()), count: 3),
                    alignment: .center,
                    spacing: 4
                ) {
                    ForEach(images, id: \.self) { imageName in
                        Color.black
                            .aspectRatio(1, contentMode: .fill)
                            .overlay(
                                Image(imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .onTapGesture {
                                        Task {
                                            await openImmersiveSpace(id: imageName)
                                        }
                                        print(imageName)
                                    }
                            )
                            .clipped()
                    }
                }
            }
//            VStack {
//                Text("Hello, world!")
//                Button("Wellcome To My Gallery !") {
//                    Task {
//                        await openImmersiveSpace(id: "Rose")
//                    }
//                }
////                Toggle("Show ImmersiveSpace", isOn: $showImmersiveSpace)
////                    .toggleStyle(.button)
////                    .padding(.top, 50)
//            }
            .navigationTitle("Content")
            .padding()
        }
//        .onChange(of: showImmersiveSpace) { _, newValue in
//            Task {
//                if newValue {
//                    await openImmersiveSpace(id: "ImmersiveSpace")
//                } else {
//                    await dismissImmersiveSpace()
//                }
//            }
//        }
    }
}

#Preview {
    ContentView()
}
