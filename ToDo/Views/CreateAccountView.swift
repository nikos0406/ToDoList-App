//
//  CreateAccountView.swift
//  ToDo
//
//  Created by Nikos Kounakas on 14.02.24.
//

import SwiftUI

struct CreateAccountView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.green)
                .rotationEffect(Angle(degrees: -30))
                .frame(width: UIScreen.main.bounds.width*3, height: 200)
                .padding(.top, 100)
            
            VStack{
                Text("New around here?")
                Button("Create An Account"){
                    // Show registration
                }
            }
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    CreateAccountView()
}
