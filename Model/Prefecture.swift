//
//  Prefecture.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/03.
//

import Foundation

struct Prefecture {
    let id: UUID
    var name: String
    var captailName: String
    
    init(id: UUID = UUID(),name: String, captailName: String) {
        self.id = id
        self.name = name
        self.captailName = captailName
    }
}

extension Prefecture: Identifiable {
    static let sampleData: [Prefecture] =
    [
        Prefecture(name: "和歌山県", captailName: "和歌山市"),
        Prefecture(name: "大阪府", captailName: "大阪市"),
        Prefecture(name: "兵庫県", captailName: "神戸市"),
        Prefecture(name: "京都府", captailName: "京都市"),
        Prefecture(name: "奈良県", captailName: "奈良市"),
        Prefecture(name: "滋賀県", captailName: "大津市")
    ]
}
