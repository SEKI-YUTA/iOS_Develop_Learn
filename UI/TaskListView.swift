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
    @State var shouldShowAlertDialog = false
    @State var userInputTitle = ""
    @State var userInputContent = ""
    var body: some View {
        VStack {
            Text("Taskリスト")
                .font(.title)
            TextInputRow(userInputValue: $userInputTitle, text: "タイトル")
            TextInputRow(userInputValue: $userInputContent, text: "詳細")
            Button(
                action: {
                    do {
                        if userInputTitle == "" {
                            shouldShowAlertDialog = true
                            return
                        }
                        let data = TodoTask(context: viewContext)
                        data.id = UUID()
                        data.title = userInputTitle
                        data.content = "this is description text"
                        try viewContext.save()
                        resetUserInput()
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
        .padding()
        .alert("タイトルが入力されてません", isPresented: $shouldShowAlertDialog) {
            
        } message: {
            Text("タイトルを入力してください")
        }
    }
    
    func resetUserInput() {
        userInputTitle = ""
        userInputContent = ""
    }
}

#Preview {
    TaskListView()
}
