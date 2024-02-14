//
//  LoginView.swift
//  ToDo
//
//  Created by Nikos Kounakas on 14.02.24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            // Header
            HeaderView()
            
            // Login Form
            Form{
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button{
                    // attempt log in
                } label : {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                        Text("Log In")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            
            // Create Account
            VStack{
                Text("New around here?")
                Button("Create An Account"){
                    // Show registration
                }
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
