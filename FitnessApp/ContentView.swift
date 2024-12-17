//
//  ContentView.swift
//  FitnessApp
//
//  Created by Alejandro Rios-Garcia on 12/11/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
