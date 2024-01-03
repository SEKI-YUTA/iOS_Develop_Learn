//
//  DatePickerScreen.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/03.
//

import SwiftUI

struct DatePickerView: View {
    @State private var startDate = Date()
    @State private var endDate = Date()
    private let dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateStyle = .medium
    }
    
    var body: some View {
        VStack {
            Label("期間: \(calcDaysDistance(date1: startDate, date2: endDate)) 日", systemImage: "calendar")
            DatePicker(
                    "開始日",
                    selection: $startDate
                
            )
            DatePicker(
                    "終了日",
                    selection: $endDate
                
            )
            Spacer()
        }
        .padding()
    }
    
    func calcDaysDistance(date1: Date, date2: Date) -> Int {
        let tmp = date1.timeIntervalSince(date2)/60/60/24
        
        return abs(Int(tmp))
    }
}

#Preview {
    DatePickerView()
}
