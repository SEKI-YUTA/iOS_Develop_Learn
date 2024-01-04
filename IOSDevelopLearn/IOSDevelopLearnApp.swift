//
//  IOSDevelopLearnApp.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/03.
//

import SwiftUI

@main
struct IOSDevelopLearnApp: App {
    let persistenceCntroller = PersistanceController()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                NavigationLink(destination: DatePickerView()) {
                    NavigationLinkContent(text: "DatePickerView")
                }
                NavigationLink(destination: PrefecturesView(prefectures: Prefecture.sampleData)) {
                    NavigationLinkContent(text: "PrefecturesView")
                }
                NavigationLink(destination: CallApiView()) {
                    NavigationLinkContent(text: "CallApiView")
                }
                NavigationLink(
                    destination: TaskListView()
                        .environment(\.managedObjectContext, persistenceCntroller.container.viewContext)
                ) {
                    NavigationLinkContent(text: "TaskListView")
                }
            }
        }
    }
}
