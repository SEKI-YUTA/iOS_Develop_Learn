//
//  TextInputRow.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/04.
//

import SwiftUI

struct TextInputRow: View {
    @State var userInputValue: Binding<String>
    var text: String
    var body: some View {
        HStack {
            Text("\(text): ")
            Spacer()
            TextField(text, text: userInputValue)
        }
    }
}

//#Preview {
//    @State var value = "hoge"
//    TextInputRow(userInputValue: $value, text: "項目名")
//}
