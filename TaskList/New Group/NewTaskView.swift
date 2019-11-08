//
//  NewTaskView.swift
//  TaskList
//
//  Created by Ashish Ranjan on 11/8/19.
//  Copyright © 2019 Ashish Ranjan. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    
    @State var text = "";
    var taskStore: TaskStore;
    
    //close the modal
    @Environment(\.presentationMode) var presentationMode;
    
    
    var body: some View {
        Form{
            TextField("Task Name", text: $text);
            Button("Add"){
                self.taskStore.tasks.append(Task(name: self.text))
                self.presentationMode.wrappedValue.dismiss();
            }
                
            .disabled(self.text.isEmpty)
        }
        
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
