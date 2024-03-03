//
//  NewItemViewViewModel.swift
//  ToDo
//
//  Created by Nikos Kounakas on 14.02.24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
}
