//
//  HomeView.swift
//  FitnessApp
//
//  Created by Alejandro Rios-Garcia on 12/11/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var manager: HealthManager
    var body: some View {
        VStack (alignment: .leading){
            Text("Welcome!")
                .font(.largeTitle)
                .padding()
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 1)) {
                ForEach(manager.activities.sorted(by: { $0.value.id < $1.value.id}), id: \.key) {
                    item in ActivityCardView(activity: item.value)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
    }
}

#Preview {
    HomeView()
}
