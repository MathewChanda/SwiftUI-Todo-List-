//
//  ContentView.swift
//  Todo List
//
//  Created by Mathew Chanda on 4/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack(spacing: UIScreen.main.bounds.size.width/3){
                Text("To-Do List")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
               Button(action: {print("added")}){
                Image(systemName: "plus")
               }
                .padding()
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
