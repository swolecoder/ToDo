//
//  Task.swift
//  TaskList
//
//  Created by Ashish Ranjan on 11/8/19.
//  Copyright © 2019 Ashish Ranjan. All rights reserved.
//
import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var completed = false
}
