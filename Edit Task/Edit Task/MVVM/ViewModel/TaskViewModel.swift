//
//  TaskViewModel.swift
//  Edit Task
//
//  Created by Hamza on 31/01/2024.
//

import Foundation

class TaskViewModel: ObservableObject {
    
    
    @Published var taskList : [TodoTask] = []
    @Published var showAddView = false
    
    func addTask(newTask: String) {
        let newList = TodoTask(name: newTask)
        self.taskList.append(newList)
    }
    
    func updateTask(newTask: String, index: Int) {
        self.taskList[index] = TodoTask(name: newTask)
    }
    
}
