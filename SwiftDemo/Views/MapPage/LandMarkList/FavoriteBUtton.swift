//
//  FavoriteBUtton.swift
//  SwiftDemo
//
//  Created by jefri ng on 30/6/2022.
//

import SwiftUI

struct FavoriteBUtton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.titleAndIcon)
                .foregroundColor(isSet ? .yellow : .gray)
        }
        
    }
}

//struct FavoriteBUtton_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteBUtton()
//    }
//}
