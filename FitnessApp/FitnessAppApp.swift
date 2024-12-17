//
//  FitnessAppApp.swift
//  FitnessApp
//
//  Created by Alejandro Rios-Garcia on 12/11/24.
//

import SwiftUI
import SwiftData

@main
struct FitnessAppApp: App {
    @StateObject var manager = HealthManager()
    
    var body: some Scene {
        WindowGroup {
            FitnessTabView()
                .environmentObject(manager)
        }
    }
}
