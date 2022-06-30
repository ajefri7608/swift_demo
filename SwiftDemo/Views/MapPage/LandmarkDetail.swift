//
//  MapView.swift
//  SwiftDemo
//
//  Created by jefri ng on 24/6/2022.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {

    var landmark: Landmark

    var body: some View {
        
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image:landmark.image)
                .offset(y: -70).padding(.bottom, -70)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()

            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }

}

//struct LandmarkDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        //LandmarkDetail(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
//    }
//}
