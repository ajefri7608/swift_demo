//
//  ContentView.swift
//  SwiftDemo
//
//  Created by jefri ng on 6/6/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
