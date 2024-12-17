//
//  HomeView.swift
//  FitnessApp
//
//  Created by Alejandro Rios-Garcia on 12/11/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    @EnvironmentObject var manager: HealthManager
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack (alignment: .leading){
                Text("Welcome!")
                    .font(.largeTitle)
                    .padding()
                VStack(alignment: .center) {
                    Text("Calories Burned")
                        .font(.title2)
                    ProgressView(progress: $viewModel.calories, goal: 500, color: .red)
                        .padding(20)
                }
                .padding(.horizontal)
                
                Spacer()
                
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
}

#Preview {
    HomeView()
        .environmentObject(HealthManager())
}
