//
//  NavigationLinkContent.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/03.
//

import SwiftUI

struct NavigationLinkContent: View {
    var text: String
    var body: some View {
        HStack {
            Text(text)
        }
        .padding()
    }
}

#Preview {
    NavigationLinkContent(text: "hogehoge")
}
