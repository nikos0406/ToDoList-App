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
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List", 
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                
                // Login Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(text: "Log In", 
                             color: .blue
                    ) {
                        //Attempt Log In
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                // Create Account
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", 
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
