//
//  TaskManager.swift
//  swift-tasks
//
//  Created by Shaun Dunne on 25/08/2014.
//  Copyright (c) 2014 Shaun Dunne. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
