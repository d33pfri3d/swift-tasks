//
//  SecondViewController.swift
//  swift-tasks
//
//  Created by Shaun Dunne on 25/08/2014.
//  Copyright (c) 2014 Shaun Dunne. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
                            
    @IBOutlet var textTask: UITextField!
    @IBOutlet var textDesc: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    
    @IBAction func btnAddTask_Click(sender: UIButton){
      println("Add Buttons was clicked")
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder();
        
        return true
    }


}

