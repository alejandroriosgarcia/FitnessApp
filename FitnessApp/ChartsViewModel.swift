//
//  ChartsViewModel.swift
//  FitnessApp
//
//  Created by Alejandro Rios-Garcia on 12/17/24.
//

import Foundation

class ChartsViewModel: ObservableObject {
    @Published var oneWeekAverage = 0
    @Published var oneWeekTotal = 0
    
    @Published var oneMonthAverage = 0
    @Published var oneMonthTotal = 0
    
    @Published var threeMonthsAverage = 0
    @Published var threeMonthsTotal = 0
    
    @Published var oneYearAverage = 0
    @Published var oneYearTotal = 0
}
