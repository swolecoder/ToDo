//
//  TaskStore.swift
//  TaskList
//
//  Created by Ashish Ranjan on 11/8/19.
//  Copyright © 2019 Ashish Ranjan. All rights reserved.
//
import Combine;
class TaskStore: ObservableObject {
    @Published   var tasks = ["WorkOut", "Finish Project 1", "Walk Dog"].map{ Task(name: $0)}
}
