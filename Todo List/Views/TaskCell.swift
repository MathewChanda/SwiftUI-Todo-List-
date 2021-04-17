//
//  SwiftUIView.swift
//  Todo List
//
//  Created by Mathew Chanda on 4/16/21.
//

import SwiftUI

struct TaskCell: View {
    let task : Task
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Text(task.taskName)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .font(.title3)
            Spacer()
        }
        .padding(20)
    }
}

struct TaskCell_Previews: PreviewProvider {
    
    static var task : Task = Task(taskName: "Clean the Dishes and code more and shit on homies")
    
    static var previews: some View {
        List{
            TaskCell(task: task)
            TaskCell(task: task)
        }
    }
}
