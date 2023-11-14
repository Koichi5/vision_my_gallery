//
//  CrewArea.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/11/12.
//

import SwiftUI

struct CrewArea: View {
    var body: some View {
        HStack {
            ForEach(Crew.allCases) { crew in
                VStack(alignment: .leading) {
                    Image(crew.name)
                        .resizable()
//                        .frame(width: 180, height: 200)
                    
                    Text(crew.fullName)
                        .font(.system(size: 32, weight: .bold))
                    Text(crew.about)
                        .font(.system(size: 20))
                }
                .frame(minWidth: 180, minHeight: 200)
                .padding(15)
                .glassBackgroundEffect()
            }
        }
    }
}

#Preview {
    CrewArea()
}
