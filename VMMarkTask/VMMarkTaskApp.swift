//
//  VMMarkTaskApp.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import SwiftUI

@main
struct VMMarkTaskApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
