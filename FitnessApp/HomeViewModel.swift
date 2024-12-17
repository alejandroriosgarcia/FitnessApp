//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Alejandro Rios-Garcia on 12/17/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @State var steps: Int = 1200
    @State var calories: Int = 12
}
