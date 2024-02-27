//
//  RegisterHeaderView.swift
//  ToDo
//
//  Created by Nikos Kounakas on 27.02.24.
//

import SwiftUI

struct RegisterHeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.orange)
                .rotationEffect(Angle(degrees: -15))
            
            VStack{
                Text("Register")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                Text("Start organizing todos")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width*3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    RegisterHeaderView()
}

