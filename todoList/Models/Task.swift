//
//  Task.swift
//  todoList
//
//  Created by Anish Gurusankar on 15/04/25.
//

import Foundation
import RxDataSources

struct Task {
    var date: String
    var items: [Todo]
}

extension Task: SectionModelType {
    typealias Item = Todo
    
    init(original: Task, items: [Item]) {
        self = original
        self.items = items
    }
}
