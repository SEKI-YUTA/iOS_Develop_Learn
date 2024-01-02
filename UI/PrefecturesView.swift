//
//  PrefecturesView.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/03.
//

import SwiftUI

struct PrefecturesView: View {
    @State var prefectures: [Prefecture]
    @State private var shouldShowDialog = false
    var body: some View {
        NavigationStack {
            List(prefectures) { prefecture in
                NavigationLink(destination: PrefectureDetail(prefecture: prefecture)) {
                    Text(prefecture.name)
                }
            }
            .navigationTitle("県庁所在地の一覧")
            .toolbar {
                Button(action: {
                    shouldShowDialog = true
                }) {
                    Image(systemName: "plus")
                }
            }
        }
        .alert("データの追加", isPresented: $shouldShowDialog) {
            Button("追加") {
                let newData = Prefecture(name: "東京都", captailName: "新宿区")
                prefectures.append(newData)
            }
        } message: {
            Text("データの追加")
        }
    }
}

#Preview {
    PrefecturesView(prefectures: Prefecture.sampleData)
}
