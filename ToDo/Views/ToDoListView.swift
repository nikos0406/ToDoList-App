//
//  ToDoItemsView.swift
//  ToDo
//
//  Created by Nikos Kounakas on 14.02.24.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel) {
                code
            }
        }
    }
}

#Preview {
    ToDoListView()
}
