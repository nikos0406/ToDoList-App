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
    @Published var showAlert  = false
    
    init() {}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {   //-86400 Seconds in a day. Makes sure ToDos can't be added for yesterday
            return false
        }
        
        return true
    }
}
