//
//  SwiftDemoApp.swift
//  SwiftDemo
//
//  Created by jefri ng on 6/6/2022.
//

import SwiftUI

@main
struct SwiftDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
