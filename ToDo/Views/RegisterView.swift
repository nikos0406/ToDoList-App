//
//  RegisterView.swift
//  ToDo
//
//  Created by Nikos Kounakas on 14.02.24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
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
                    TextField("Your Name", text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    TextField("Your Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(text: "Create Account",
                             color: .blue
                    ) {
                        viewModel.register()
                    }
                    
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
