//
//  TaskListView.swift
//  IOSDevelopLearn
//
//  Created by 関佑太 on 2024/01/04.
//

import SwiftUI
import CoreData

struct TaskListView: View {
    @Environment(\.managedObjectContext) var viewContext
    @FetchRequest(entity: TodoTask.entity(), sortDescriptors: []) var fetchedTasks: FetchedResults<TodoTask>
    var body: some View {
        VStack {
            Text("Task List")
                .font(.title)
            Button(
                action: {
                    do {
                        let data = TodoTask(context: viewContext)
                        data.id = UUID()
                        data.title = "hogehoge"
                        data.content = "this is description text"
                        try viewContext.save()
                    } catch {
                        print(error)
                    }
                    
                },
                label: {
                    Text("add")
                }
            )
            List(fetchedTasks) { todo in
                let title = todo.title ?? "no title"
                Text("\(title)")
            }
        }
    }
}

#Preview {
    TaskListView()
}
