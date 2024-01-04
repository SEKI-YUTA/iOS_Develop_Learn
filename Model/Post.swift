//
//  Post.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/04.
//

import Foundation

struct Post: Codable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
