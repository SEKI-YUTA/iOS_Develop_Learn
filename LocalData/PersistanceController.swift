//
//  PersistanceController.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/04.
//

import CoreData

struct PersistanceController {
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Models")
        container.loadPersistentStores{ (storeDescruption, error) in
            if let error = error as NSError? {
                print("something wrong \(error)")
            }
        }
    }
}
