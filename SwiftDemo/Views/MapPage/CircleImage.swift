//
//  CircleImage.swift
//  SwiftDemo
//
//  Created by jefri ng on 24/6/2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("circleTest")
            .resizable()
            .frame(width: 120, height: 120)
            .scaledToFit()
            .clipShape(Circle())
            .overlay{
                Circle().strokeBorder(.white, lineWidth: 4)
            }
            .clipped()
            .shadow(radius: 30)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
