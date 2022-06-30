//
//  LandmarkList.swift
//  SwiftDemo
//
//  Created by jefri ng on 29/6/2022.
//

import SwiftUI

struct LandmarkList: View {
    @State var modelData : ModelData
    @State private var showFavouritesOnly = true
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavorite)
            
        }
    }
    var body: some View {
        NavigationView {
            List() {
                VStack {
                    Toggle(isOn: $showFavouritesOnly, label: {
                        Text("Favorites only")

                    })
                    Divider()
                }

                

                ForEach(filteredLandmarks, content: {
                    landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                           
                    }
                    
                        

                
                }).listRowSeparator(.hidden)
                

                
            }
            .animation(.default)
            .navigationTitle("Landmarks")
        }

    }
}

//struct LandmarkList_Previews: PreviewProvider {
//    static var previews: some View {
//        LandmarkList()
//    }
//}
