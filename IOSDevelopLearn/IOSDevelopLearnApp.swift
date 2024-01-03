//
//  IOSDevelopLearnApp.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/03.
//

import SwiftUI

@main
struct IOSDevelopLearnApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                NavigationLink(destination: DatePickerScreen()) {
                    NavigationLinkContent(text: "DatePickerView")
                }
                NavigationLink(destination: PrefecturesView(prefectures: Prefecture.sampleData)) {
                    NavigationLinkContent(text: "PrefecturesView")
                }
            }
        }
    }
}
