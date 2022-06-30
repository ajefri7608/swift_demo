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

            LandmarkList(modelData: ModelData()).tabItem {
                NavigationLink(destination: LandmarkList(modelData: ModelData())) {
                    Image(systemName: "list.bullet.indent")
                    Text("LandmarkList").tag(2)
                }
            }

        }

    }
}

//struct TabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBar()
//    }
//}
