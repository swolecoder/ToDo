//
//  TaskStore.swift
//  TaskList
//
//  Created by Ashish Ranjan on 11/8/19.
//  Copyright © 2019 Ashish Ranjan. All rights reserved.
//
import Combine;
class TaskStore: ObservableObject {
    @Published   var tasks = ["Ashish1", "Ashish2", "Ashish3", "Ashish4", "Ashish5","Ashish6"].map{ Task(name: $0)}
}
