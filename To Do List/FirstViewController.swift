//
//  FirstViewController.swift
//  To Do List
//
//  Created by Joao Ferreira on 03/10/16.
//  Copyright © 2016 Joao Ferreira. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var listTaks:[String] = []
    
    
    @IBOutlet weak var table: UITableView!
    
    //number of rows
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listTaks.count
    }
    
    
    //Delete of a task
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            listTaks.remove(at: indexPath.row)
            
            table.reloadData()
            
            UserDefaults.standard.set(listTaks, forKey: "tasks")
            
        }
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //new row
        let	cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = listTaks[indexPath.row]
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        listTaks = UserDefaults.standard.object(forKey: "tasks") as! [String]
        
        table.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

