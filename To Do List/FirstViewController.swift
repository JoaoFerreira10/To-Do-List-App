//
//  FirstViewController.swift
//  To Do List
//
//  Created by Joao Ferreira on 03/10/16.
//  Copyright © 2016 Joao Ferreira. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var listTaks:NSMutableArray = []
    
    
    @IBOutlet weak var table: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listTaks.count
    }
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let	cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        var cl = ""
        
        if let y = listTaks[indexPath.row] as? String {
        
        	//cell.textLabel?.text = y
            cl = y
        }else{
        	//cell.textLabel?.text = " "
            cl = " "
        }
        
        cell.textLabel?.text = cl
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        let tsk = UserDefaults.standard.object(forKey: "tasks")
        
        if let a = tsk as? NSMutableArray {
            listTaks = a
        }
        
        table.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

