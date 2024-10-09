//
//  ProjectTracker.swift
//  project-tracker
//
//  Created by Daniel Konnek on 9.10.2024.
//

import SwiftUI
import SwiftData

@main
struct ProjectTracker: App {
    var body: some Scene {
        WindowGroup {
            ProjectListView()
                .modelContainer(for: [Project.self, ProjectUpdate.self])
        }
    }
}
