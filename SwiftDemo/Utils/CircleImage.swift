//
//  CircleImage.swift
//  SwiftDemo
//
//  Created by jefri ng on 24/6/2022.
//

import SwiftUI

struct CircleImage: View {
    @State var flipped = false
    var image: Image
    var body: some View {
        let flipDegrees = flipped ? 180.0 : 0
        ZStack() {
            image
                .resizable()
                .frame(width: 120, height: 120)
                .scaledToFit()
                .clipShape(Circle())
                .overlay{
                    Circle().strokeBorder(.white, lineWidth: 4)
                }
                .clipped()
                
                .flipRotate(flipDegrees).opacity(flipped ? 0.0 : 1.0)
            
            Image("LoginPageBg")
                .resizable()
                .frame(width: 120, height: 120)
                .scaledToFit()
                .clipShape(Circle())
                .overlay{
                    Circle().strokeBorder(.white, lineWidth: 4)
                }
                .clipped()
                
                .flipRotate(-180 + flipDegrees).opacity(flipped ? 1.0 : 0.0)

        }
        .animation(Animation.easeInOut(duration: 0.8), value: flipDegrees)
        .onTapGesture { self.flipped.toggle() }
    }
}

extension View {

      func flipRotate(_ degrees : Double) -> some View {
            return rotation3DEffect(Angle(degrees: degrees), axis: (x: 0.0, y: 1.0, z: 0.0))
      }

      func placedOnCard(_ color: Color) -> some View {
            return padding(5).frame(width: 250, height: 150, alignment: .center).background(color)
      }
}

//struct CircleImage_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleImage()
//    }
//}
