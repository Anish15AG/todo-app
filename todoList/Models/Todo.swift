//
//  Todo.swift
//  todoList
//
//  Created by Anish Gurusankar on 15/04/25.
//

import Foundation

struct Todo: Codable {
    var title: String
    var date: String?
    var time: String?
    var description: String?
    var isCompleted: Bool = false
}

extension Todo: Equatable {
    static let empty = Todo(title: "", date: "", time: "", description: "")
    
    static func == (lhs: Todo, rhs: Todo) -> Bool {
        return (lhs.title == rhs.title &&
                    lhs.date == rhs.date &&
                    lhs.time == rhs.time &&
                    lhs.date == rhs.date &&
                    lhs.description == rhs.description &&
                    lhs.isCompleted == rhs.isCompleted)
    }
}
