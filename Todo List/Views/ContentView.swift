//
//  ContentView.swift
//  Todo List
//
//  Created by Mathew Chanda on 4/16/21.
//

import SwiftUI

struct ContentView: View {
    @State var newTask : String = ""
    @StateObject var listTask = Tasks()
    @State var showAlert = false
    var body: some View {
            NavigationView {
                List{
                    HStack{
                        Text("Add new Tasks")
                            .font(.subheadline)
                            .bold()
                        TextField("Add a Task", text: $newTask)
                        Button(action: {
                            
                            if(newTask == ""){
                                showAlert = true
                            }
                            
                            else{
                                listTask.tasks.append(Task(taskName: newTask))
                                newTask = ""
                                print(listTask.tasks)
                            }
                        }){
                            Image(systemName: "plus")
                        }
                    }
                    ForEach(listTask.tasks){ task in
                        TaskCell(task: task)
                    }
                }
                .navigationBarTitle(Text("To-Do List"))
                .alert(isPresented: $showAlert) { () -> Alert in
                            Alert(title: Text("Add a To-Do List in the TextField "))
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
