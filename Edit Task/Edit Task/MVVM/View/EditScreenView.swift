//
//  EditScreenView.swift
//  Edit Task
//
//  Created by Hamza on 31/01/2024.
//

import SwiftUI

struct EditScreenView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var viewModel: TaskViewModel
    @State var currentTask: String
    var index: Int
    
    var body: some View {
        HStack {
            
            VStack(spacing: 20) {
                
                Text("Edit Task 📝")
                    .font(.largeTitle)
                    .bold()
                
                TextField("Edit", text: $currentTask)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                
                Button {
                    viewModel.updateTask(newTask: currentTask, index: index)
                    dismiss.callAsFunction()
                } label: {
                    Text("Save")
                }
                
                Spacer()
                
            }
        }
    }
}

struct EditScreenView_Previews: PreviewProvider {
    static var previews: some View {
        //        EditScreenView()
        ContentView()
    }
}
