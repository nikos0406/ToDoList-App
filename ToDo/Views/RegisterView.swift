//
//  RegisterView.swift
//  ToDo
//
//  Created by Nikos Kounakas on 14.02.24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
                     Rectangle()
                         .fill(Color.red)
                        .frame(width: 100, height: 50)
                   Rectangle()
                       .fill(Color.blue)
                       .frame(width:50, height: 100)
              }
        .border(Color.green, width: 1)
    }
}

#Preview {
    RegisterView()
}
