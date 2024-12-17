//
//  ChartsView.swift
//  FitnessApp
//
//  Created by Alejandro Rios-Garcia on 12/17/24.
//

import SwiftUI
import Charts

struct DailyStepView: Identifiable {
    let id = UUID()
    let date: Date
    let stepCount: Double
}

enum ChartOptions: String, CaseIterable {
    case oneWeek = "1W"
    case oneMonth = "1M"
    case threeMonth = "3M"
    case yearToDate = "YTD"
    case oneYear = "1Y"
}

struct ChartsView: View {
    @EnvironmentObject var manager:HealthManager
    @State var selectedChart: ChartOptions = .oneMonth
    var body: some View {
        VStack() {
            Text("Steps This Month")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            ZStack {
                switch selectedChart {
                case .oneWeek:
                    Chart {
                        ForEach(manager.oneWeekChartData) { daily in
                            BarMark(x: .value(daily.date.formatted(), daily.date, unit: .day), y: .value("Steps", daily.stepCount))
                        }
                    }
                case .oneMonth:
                    Chart {
                        ForEach(manager.oneMonthChartData) { daily in
                            BarMark(x: .value(daily.date.formatted(), daily.date, unit: .day), y: .value("Steps", daily.stepCount))
                        }
                    }
                case .threeMonth:
                    EmptyView()
                case .yearToDate:
                    EmptyView()
                case .oneYear:
                    Chart {
                        ForEach(manager.oneMonthChartData) { daily in
                            BarMark(x: .value(daily.date.formatted(), daily.date, unit: .day), y: .value("Steps", daily.stepCount))
                        }
                    }
                }
            }
            .foregroundColor(.blue)
            .frame(height: 350)
            .padding(.horizontal)
            
            HStack {
                ForEach(ChartOptions.allCases, id: \.rawValue) { option in
                    Button(option.rawValue) {
                        withAnimation {
                            selectedChart = option
                        }
                    }
                    .padding()
                    .foregroundColor(selectedChart == option ? .white : .blue)
                    .background(selectedChart == option ? .blue: .clear)
                    .cornerRadius(10)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ChartsView()
        .environmentObject(HealthManager())
}
