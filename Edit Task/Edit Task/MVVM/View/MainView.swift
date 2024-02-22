//
//  TaskView.swift
//  Edit Task
//
//  Created by Hamza on 31/01/2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = TaskViewModel()
        
    var body: some View {
        
        NavigationStack {
            
            GeometryReader { reader in
                
                ZStack(alignment: .bottomTrailing) {
                    
                    List {
                        ForEach(0 ..< viewModel.taskList.count, id: \.self) { index in
                            
                            let currentTask = viewModel.taskList[index]
                            
                            NavigationLink {
                                EditScreenView(viewModel: viewModel, currentTask: currentTask.name, index: index)
                            } label: {
                                Text(currentTask.name)
                            }
                        }
                    }
                    
                    Button {
                        self.viewModel.showAddView = true
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50)
                            .padding()
                            .padding(.trailing, 5)
                    }
                    .sheet(isPresented: $viewModel.showAddView) {
                        AddTaskList(viewModel: self.viewModel)
                    }
                }
                .frame(width: reader.size.width, height: reader.size.height, alignment: .bottomTrailing)
            }
        }
        .navigationTitle("Tasks")

    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
