//
//  RegisterView.swift
//  ToDo
//
//  Created by Nikos Kounakas on 14.02.24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "Register",
                           subtitle: "Start organizing todos",
                           angle: -15,
                           background: .orange)
                
                // Login Form
                Form{
                    TextField("Your Name", text: $name)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Your Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(text: "Create Account",
                             color: .blue
                    ) {
                        //Attempt Register
                    }
                    .padding()
                }
                .offset(y: -50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
