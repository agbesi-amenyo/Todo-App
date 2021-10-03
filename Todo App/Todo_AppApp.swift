//
//  Todo_AppApp.swift
//  Todo App
//
//  Created by Agbesi Amenyo on 03/10/2021.
//

import SwiftUI

@main
struct Todo_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
