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


    @StateObject var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(modelData)
        }
    }
}
