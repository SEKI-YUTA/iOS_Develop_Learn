//
//  TaskListItem.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/04.
//

import SwiftUI

struct TaskListItem: View {
    let title: String
    let content: String
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                Text(content)
            }
        }
    }
}

#Preview {
    TaskListItem(title: "hogehoge", content: "fugafuga")
}
