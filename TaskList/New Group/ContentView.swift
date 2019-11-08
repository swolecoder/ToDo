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
 
 .sheet to add modal view
 */
import SwiftUI

struct ContentView: View {
    @State var modalIsPresented = false;
    @ObservedObject var taskStore: TaskStore
    
    var body: some View {
        NavigationView {
            
            List{
                ForEach(taskStore.tasks) { task in
                    Text(task.name)
                }
                    
                    //moving rows
                    .onMove{ sourceIndices, destinationIndices in
                        self.taskStore.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndices)
                        
                }
                    
                    //delete items
                    .onDelete { indexSet in
                        self.taskStore.tasks.remove(atOffsets: indexSet)
                }
            }
                
            .navigationBarTitle("Tasks")
                //nbms- trailing
                .navigationBarItems(
                    leading: EditButton(),
                    trailing:
                    
                    Button(action: {
                        self.modalIsPresented = true;
                    }) {
                        Image(systemName: "plus")
                    }
                    .sheet(isPresented: $modalIsPresented){
                        NewTaskView(taskStore: self.taskStore);
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
