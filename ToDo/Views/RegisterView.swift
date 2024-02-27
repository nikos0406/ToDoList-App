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
                RegisterHeaderView()
                
                // Login Form
                Form{
                    TextField("Your Name", text: $name)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Your Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button{
                    } label : {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                            Text("Create Account")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
