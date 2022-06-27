//
//  LoginPage.swift
//  SwiftDemo
//
//  Created by jefri ng on 27/6/2022.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        ZStack {

            Image("LoginPageBg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 24){
                CircleImage()
                LoginBox()
            }
            .padding()
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
