//
//  FirstViewController.swift
//  swift-tasks
//
//  Created by Shaun Dunne on 25/08/2014.
//  Copyright (c) 2014 Shaun Dunne. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //UI TableViewDataSource
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) ->
        
        UITableViewCell!{
            let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Test")
            
            cell.textLabel.text = taskMgr.tasks[indexPath.row].name
            cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc
            
            return cell
        }
    
}
