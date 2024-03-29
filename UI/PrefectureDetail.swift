//
//  PrefectureDetail.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/03.
//

import SwiftUI

struct PrefectureDetail: View {
    let prefecture: Prefecture
    var body: some View {
        VStack(alignment: .center) {
            if let imageName = prefecture.imageName {
                Image(imageName)
            }
            HStack {
                Text(prefecture.name)
                    .font(.headline)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            HStack {
                Text("県庁所在地")
                Spacer()
                Text(prefecture.captailName)
            }
        }
        .padding()
    }
}

#Preview {
    PrefectureDetail(prefecture: Prefecture.sampleData[0])
}
