//
//  NavigationView.swift
//  SwiftDemo
//
//  Created by jefri ng on 24/6/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            MapView().tabItem {
                NavigationLink(destination: MapView()) {
                    Image(systemName: "car")
                    Text("MapView")}.tag(1)
            }
            ListItem().tabItem {
                NavigationLink(destination: ListItem()) {
                    Image(systemName: "car")
                    Text("ListView1").tag(2)
                }
            }
        }

    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
