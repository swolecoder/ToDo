//
//  ContentView.swift
//  TaskList
//
//  Created by Ashish Ranjan on 11/8/19.
//  Copyright © 2019 Ashish Ranjan. All rights reserved.
//

/*
 Other ways of displaying list
         List(taskStore.tasks.indices) { index in
             Text(self.taskStore.tasks[index].name);
         }
 
         List(taskStore.tasks, id: \.id){
             task in
             Text(task.name);
         }
 
 
 */
import SwiftUI

struct ContentView: View {
    var taskStore: TaskStore;
    
    var body: some View {
        NavigationView {
            List(taskStore.tasks){
                task in
                Text(task.name);
            }
                
            .navigationBarTitle("Tasks")
                //nbms- trailing
                .navigationBarItems(trailing:
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "plus")
                    }
                    
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
