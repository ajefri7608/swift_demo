//
//  LoginBox.swift
//  SwiftDemo
//
//  Created by jefri ng on 27/6/2022.
//

import SwiftUI

struct LoginBox: View {
    @State var accountName: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    @GestureState var test = false
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30){
            
            VStack{
                HStack{
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    TextField("Account Name: ", text:$accountName)
                }
                .frame(width: .none, height: 20)
                .padding()
                .background(Capsule().fill(Color.white))
                
                
                HStack{
                    Image(systemName: "lock")
                        .foregroundColor(.secondary)
                    if(showPassword){
                        TextField("Password", text: $password)
                    } else{
                        SecureField("Password", text: $password)
                    }
                    Button(action: {}) {
                        ZStack{
                            Image(systemName: "eye.fill")
                                .foregroundColor(.secondary)
                                .opacity(self.showPassword ? 1 : 0)
                            Image(systemName: "eye.slash")
                                .foregroundColor(.secondary)
                                .opacity(self.showPassword ? 0 : 1)
                        }
                        
                        
                        
                    }
                    .onLongPressGesture(minimumDuration: 2, maximumDistance: 0, perform: {},  onPressingChanged: {a in
                        if(a){
                            print("on press")
                            showPassword = true
                        }else{
                            print("end")
                            showPassword = false
                        }
                        
                    })
//                    .simultaneousGesture(
//                        LongPressGesture(minimumDuration: 3)
//                            .onChanged{
//                                a in
//                                print(a)
//                            }
//                             .onEnded { done in
//                                 print("B")
//                             }
//                    ).
                                            
                }
                .frame(width: .none, height: 20)
                .padding()
                .background(Capsule().fill(Color.white))
                
                Button(action: {}) {
                    HStack {
                        Text("Sign In")
                        Spacer()
                    }
                }
                .padding()
                .background(Color(uiColor: .systemBlue))
                .cornerRadius(10)
                .foregroundColor(Color.white)
                
            }
            
            
        }
        .padding(.all, 32)
        .background(Color(UIColor.systemGray6))
        .cornerRadius(20)
        .shadow(radius: 1)
        
        
    }
}

struct LoginField_Previews: PreviewProvider {
    static var previews: some View {
        LoginBox()
    }
}
