//
//  DialogDemoView.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/04.
//

import SwiftUI

struct DialogDemoView: View {
    @State var shouldShowDialog = false
    @State var userInputTitle = ""
    var body: some View {
        var customDialog = CustomDialogView(delegate: nil, content: {
            VStack {
                Text("hogehoge")
                TextField("タイトル", text: $userInputTitle)
            }
        })
        VStack {
            Text("ダイアログを表示するデモ")
            Button(
                action: {
                    shouldShowDialog = true
                },
                label: {
                    Text("表示")
                }
            )
        }
        if shouldShowDialog {
            customDialog
        }
//        .confirmationDialog(
//            "タスクを追加",
//            isPresented: $shouldShowDialog) {
//                TextField("タイトル", text: $userInputTitle)
//            Button(action: {}, label: {
//                Text("追加")
//            })
//        }
    }
}

#Preview {
    DialogDemoView()
}
