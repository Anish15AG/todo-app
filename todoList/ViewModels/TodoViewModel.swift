//
//  TodoViewModel.swift
//  todoList
//  Created by Anish Gurusankar on 15/04/25.
//

import Foundation
import RxSwift
import RxCocoa

class TodoViewModel: NSObject {
    var task = BehaviorRelay<Todo>(value: Todo.empty)
    var disposeBag = DisposeBag()
    
    init(_ task: Todo) {
        _ = BehaviorSubject<Todo>.just(task)
            .take(1)
            .subscribe(onNext: self.task.accept(_:))
            .disposed(by: disposeBag)
    }
    
    lazy var checkImageString: Observable<String> = self.task.map { return $0.isCompleted ? "checkmark.circle.fill" : "circle" }
}
