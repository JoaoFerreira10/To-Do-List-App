//
//  SecondViewController.swift
//  To Do List
//
//  Created by Joao Ferreira on 03/10/16.
//  Copyright © 2016 Joao Ferreira. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    //var db = UserDefaults.standard.object(forKey:"tasks")
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func Save(_ sender: AnyObject) {
        
         UserDefaults.standard.set(textField.text, forKey: "tasks")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

