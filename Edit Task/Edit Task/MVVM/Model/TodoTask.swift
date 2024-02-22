//
//  TodoTask.swift
//  Edit Task
//
//  Created by Hamza on 31/01/2024.
//

import Foundation

struct TodoTask : Identifiable {
    var id = UUID().uuidString
    var name: String
}
