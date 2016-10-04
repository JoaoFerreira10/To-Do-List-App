//
//  SecondViewController.swift
//  To Do List
//
//  Created by Joao Ferreira on 03/10/16.
//  Copyright © 2016 Joao Ferreira. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func Save(_ sender: AnyObject) {
        
        //        let tsks = UserDefaults.standard.object(forKey: "tasks")
        //
        //        var item: [String]
        //
        //        if let itens = tsks as? [String] {
        //
        //            item = itens
        //
        //        	item.append(textField.text!)
        //
        //        } else{
        //
        //        	item = [textField.text!]
        //        }
        
        var item = UserDefaults.standard.object(forKey: "tasks") as? [String]
        
        if !textField.text!.isEmpty {
            
            item?.append(textField.text!)
        }
        
        UserDefaults.standard.set(item, forKey: "tasks")
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

