//
//  ProjectUpdate.swift
//  project-tracker
//
//  Created by Daniel Konnek on 9.10.2024.
//

import Foundation
import SwiftData

@Model
class ProjectUpdate: Identifiable {
    
    @Attribute(.unique) var id: String
    var headline = ""
    var summary = ""
    var date = Date()
    var hours = 0.0
    var updateType = UpdateType.log
    var project: Project?
    
    init() {
        id = UUID().uuidString
    }
}

enum UpdateType: Codable {
    case log, milestone
}
