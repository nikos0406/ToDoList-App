//
//  TLButton.swift
//  ToDo
//
//  Created by Nikos Kounakas on 28.02.24.
//

import SwiftUI

struct TLButton: View {
    
    let text: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label : {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(color)
                
                Text(text)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(text: "Click me!", color: .blue){
        //Action
    }
}
