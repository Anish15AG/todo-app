//
//  DateFormatter+Extensions.swift
//  todoList
//
//  Created by Anish Gurusankar on 15/04/25.
//

import Foundation

extension Date {
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: self)
    }
    
    func toTimeString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: self)
    }
}

extension String {
    func toDate() -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.date(from: self)
    }
    
    func toTime() -> Date? {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.date(from: self)
    }
}
