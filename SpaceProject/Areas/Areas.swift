//
//  Areas.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/11/12.
//

import SwiftUI

// This file is for Navigation
struct Areas: View {
    var body: some View {
        ZStack {
            NavigationStack {
                NavigationToArea()
            }
        }
    }
}

#Preview {
    Areas()
}
