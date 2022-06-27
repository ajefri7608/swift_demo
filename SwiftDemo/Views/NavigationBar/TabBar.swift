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
            LoginPage().tabItem({
                NavigationLink(destination: LoginPage()) {
                    Image(systemName: "person")
                    Text("Login").tag(3)
                    
                }
            })
            MapView().tabItem {
                NavigationLink(destination: MapView()) {
                    Image(systemName: "map")
                        
                    Text("MapView")}.tag(1)
            }
            ListItem().tabItem {
                NavigationLink(destination: ListItem()) {
                    Image(systemName: "list.bullet.indent")
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
