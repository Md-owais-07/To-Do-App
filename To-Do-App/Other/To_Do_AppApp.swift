//
//  To_Do_AppApp.swift
//  To-Do-App
//
//  Created by codilar on 01/03/24.
//

import SwiftUI
import FirebaseFirestore
import FirebaseCore

@main
struct To_Do_AppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
