//
//  ToDoApp.swift
//  ToDo
//
//  Created by Nikos Kounakas on 14.02.24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
