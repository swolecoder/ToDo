//
//  ContentView.swift
//  TaskList
//
//  Created by Ashish Ranjan on 11/8/19.
//  Copyright © 2019 Ashish Ranjan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var taskStore = TaskStore();
    
    var body: some View {
        //        List(taskStore.tasks.indices) { index in
        //            Text(self.taskStore.tasks[index].name);
        //        }
        
        //        List(taskStore.tasks, id: \.id){
        //            task in
        //            Text(task.name);
        //        }
        
        List(taskStore.tasks){
            task in
            Text(task.name);
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
