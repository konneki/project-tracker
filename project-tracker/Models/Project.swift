//
//  Project.swift
//  project-tracker
//
//  Created by Daniel Konnek on 9.10.2024.
//

import Foundation
import SwiftData

@Model
class Project: Identifiable {
    
    @Attribute(.unique) var id: String
    var name = ""
    var startDate = Date()
    var focus = ""
    @Relationship(deleteRule: .cascade, inverse: \ProjectUpdate.project)
    var updates: [ProjectUpdate] = [ProjectUpdate]()
    
    init() {
        id = UUID().uuidString
    }
    
}
