//
//  MissionArea.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/11/14.
//

import SwiftUI
import AVKit

struct MissionArea: View {
    private let player: AVPlayer
    @State var isPlaying: Bool = false

    init() {
        if let url = Bundle.main.url(forResource: "Inspiration4", withExtension: "mp4") {
            player = AVPlayer(url: url)
        } else {
            player = AVPlayer(url: URL(fileURLWithPath: ""))
            print("file does not found")
        }
    }
    
    var body: some View {
        VStack {
           VideoPlayer(player: player)
           Button {
               isPlaying ? player.pause() : player.play()
               isPlaying.toggle()
               player.seek(to: .zero)
           } label: {
               Image(systemName: isPlaying ? "stop" : "play")
                   .padding()
           }
//            HStack {
//                Button("Play") {
//                    player.play()
//                }           
//                .padding(10)
//                Button("Pause") {
//                    player.pause()
//                }
//               .padding(10)
//            }
        }
//        .glassBackgroundEffect()
//        .onAppear(perform: {
//            isPlaying = false
//        })
        .onDisappear(perform: {
            player.pause()
        })
    }
}

#Preview {
    MissionArea()
}
