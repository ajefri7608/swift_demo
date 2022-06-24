//
//  MapView.swift
//  SwiftDemo
//
//  Created by jefri ng on 24/6/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        
        VStack {
            Map(coordinateRegion: $region)
            CircleImage()
                .offset(y: -70).padding(.bottom, -70)
            VStack(alignment: .leading){
                Text("Hello, World!").foregroundColor(.green).font(.title)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/).padding(EdgeInsets(top:0, leading:0, bottom:10, trailing:10))
                    Spacer()
                    Text("California").font(.subheadline)
                }
                
            }.padding()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
