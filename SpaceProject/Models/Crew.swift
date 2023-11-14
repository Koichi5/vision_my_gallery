//
//  Crew.swift
//  VisionMyGallery
//
//  Created by Koichi Kishimoto on 2023/11/12.
//

import Foundation

enum Crew: String, Identifiable, CaseIterable, Equatable {
    case kumar, lee, ramirez, parker
    var id: Self { self }
    var name: String { rawValue.lowercased() }
    
    var fullName: String{
        switch self {
        case .kumar:
            "Rajesh Kumar"
        case .lee:
            "Jun Lee"
        case .ramirez:
            "Alejandro Ramirez"
        case .parker:
            "Emily Parker"
        }
    }
    var about: String {
        switch self {
        case .kumar:
            "A NASA astronaut and physicist, known for participating in research missions on the International Space Station"
        case .lee:
            "An aerospace engineer, is a talented scientist dedicated to lunar exploration training as a NASA astronaut"
        case .ramirez:
            "A former Navy pilot, now serves as a NASA astronaut, taking part in numerous space missions and showcasing exceptional leadership"
        case .parker:
            "A NASA astronaut and earth scientist, is renowned for her research on climate change, observing Earth's environment from space"
        }
    }
}
