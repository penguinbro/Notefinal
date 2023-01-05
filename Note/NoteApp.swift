//
//  NoteApp.swift
//  Note
//
//  Created by Daniel Leung on 4/1/2023.
//

import SwiftUI

@main
struct NoteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
