//
//  AddTaskList.swift
//  Edit Task
//
//  Created by Hamza on 31/01/2024.
//

import SwiftUI

struct AddTaskList: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var viewModel: TaskViewModel
    
    @State var newTask = ""
    
    var body: some View {
        
        HStack {
            VStack(spacing : 20) {
                Text("Tasks 👀")
                    .font(.largeTitle)
                    .bold()
                
                
                TextField("Create a New Task", text: $newTask)
                    .padding(.horizontal)
                    .textFieldStyle(.roundedBorder)
                
                Spacer()
                
                Button(action: {
                    viewModel.addTask(newTask: newTask)
                    dismiss.callAsFunction()
                },label: {
                    Text("Done")
                        .font(.largeTitle)
                })
                
                
            }
            
            .padding()
            
            Spacer()
            
            
            
        }
    }
}

struct AddTaskList_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        AddTaskList(taskList: .constant([]))
    }
}
