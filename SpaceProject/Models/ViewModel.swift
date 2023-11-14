//
//  ViewModel.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/11/12.
//

import Foundation

@Observable
class ViewModel {
    var navigationPath: [Area] = []
    var isShowingRocketCapsule: Bool = false
    var isShowingFullRocket: Bool = false
    var isShowingMixedRocket : Bool = false
    
    var capsuleRealityAreaId: String = "CapsuleRealityArea"
    var fullRocketRealityArea: String = "FullRocketRealityArea"
    var mixedRocketRealityArea: String = "MixedRocketRealityArea"
}
