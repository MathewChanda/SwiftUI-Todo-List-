//
//  Tasks.swift
//  Todo List
//
//  Created by Mathew Chanda on 4/16/21.
//

import Foundation
import SwiftUI
import Combine

class Task : Identifiable{
    var taskName : String
    let id = UUID() 
    init(taskName : String) {
        self.taskName = taskName
    }
}

class Tasks : ObservableObject{
    @Published var tasks : [Task] = [Task]()
}
