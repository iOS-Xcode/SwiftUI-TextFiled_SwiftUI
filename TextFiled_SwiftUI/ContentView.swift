//
//  ContentView.swift
//  TextFiled_SwiftUI
//
//  Created by Seokhyun Kim on 2020-10-19.
//

import SwiftUI

struct ContentView: View {
    @State private var userName : String = ""
    @State private var password : String = ""
    var body: some View {
        VStack(spacing: 10) {
            HStack {
               
                //TextField(<#T##titleKey: LocalizedStringKey##LocalizedStringKey#>, text: <#T##Binding<String>#>)
                //text: 이하는 바이딩이므로 $로 감싼다. 즉 text:는 묶여있다.
                TextField("Input your name...", text:$userName)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.userName = ""
                }) {
                    if self.userName.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                }
            }
            HStack {
                SecureField("Input your password...", text:$password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action:{
                    self.password = ""
                }) {
                    if self.password.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                }
            }
            }
            Text("Your password \(password)")
            //padding 은 안으로 밀어넣는다.horizontal 만 패딩.
        }.padding(.horizontal, 50)

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
