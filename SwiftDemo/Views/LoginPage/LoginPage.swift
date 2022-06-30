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
                Text(environmentDisplay())
            }
            .padding()
        }
    }
    func environmentDisplay() -> String {
        var test = ""
        #if UAT || SIT
        test = "UAT"
        #else
        test = "PROD"
        #endif
        return test
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
