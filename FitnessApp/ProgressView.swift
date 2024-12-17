//
//  ProgressView.swift
//  FitnessApp
//
//  Created by Alejandro Rios-Garcia on 12/17/24.
//

import SwiftUI

struct ProgressView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    private let width: CGFloat = 20
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 20)
                .cornerRadius(10)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: CGFloat(progress), height: 20)
                .cornerRadius(10)
        }
        .frame(width: 300)
        .padding()
    }
}

#Preview {
    ProgressView(progress: .constant(100), goal: 200, color: .blue)
}
