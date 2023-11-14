//
//  Area.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/11/12.
//

// This file holds information about each area
import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case astronauts, equipment, mission
    var id: Self { self }
    var name: String { rawValue.lowercased() }
    
    var title: String {
        switch self {
        case.astronauts:
            "Inspiration 4 mission vrew members ..."
        case.equipment:
            "Inspiration 4 mission vrew equipment ..."
        case .mission:
            "Show sample movie ..."
        }
    }
}
