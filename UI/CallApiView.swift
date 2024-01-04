//
//  CallApiView.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/04.
//

import SwiftUI

struct CallApiView: View {
    @StateObject var apiProxy = ApiProxy()
    var body: some View {
        VStack {
            Button(
                action: {
                    Task {
                        await apiProxy.callApi()
                    }
                }
            ) {
                Text("Api Call")
            }
            
            List(apiProxy.postData) { post in
                Text(post.title)
                    .padding()
            }
        }
    }
}

#Preview {
    CallApiView()
}
