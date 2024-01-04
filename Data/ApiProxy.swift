//
//  ApiProxy.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/04.
//

import Foundation

class ApiProxy: ObservableObject {
    let ENDPOINT = "https://jsonplaceholder.typicode.com/posts"
    @Published var postData: [Post] = []
    
    @MainActor
    func callApi() async {
        guard let req_url = URL(string: ENDPOINT) else {return}
        
        do {
            let (data, _) = try await URLSession.shared.data(from: req_url)
            let decoder = JSONDecoder()
            let json = try decoder.decode([Post].self, from: data)
            print(json)
            print(json.count)
            
            postData = json
            
//            guard let items = json else {return}
//            self.postData.removeAll()
//            
//            for item in items {
//                let post = Post(userId: item.userId, id: item.id, title: item.title, body: item.body)
//                self.postData.append(post)
//            }
        } catch {
            print(error)
            print("something wrong")
        }
    }
}
