//
//  NavigationToArea.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/11/12.
//

import SwiftUI

struct NavigationToArea: View {
    var body: some View {
        VStack {
            Text("Welcome To The Inspiration 4 Mission By SpaceX")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 250)
            
            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                        
                        if area == Area.astronauts {
                            CrewArea()
                        }
                        if area == Area.equipment {
                            EquipmentArea()
                        }
                        if area == Area.mission {
                            MissionArea()
                        }
                        
                        Spacer()
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                    .controlSize(.extraLarge)
                }
            }
        }
        .background() {
            Image("splash")
//                .resizable()
        }
    }
}

#Preview {
    NavigationToArea()
}
