//
//  ViewController.swift
//  Checkroutine
//
//  Created by Gabriel Breshears on 1/10/18.
//  Copyright © 2018 Gabriel Breshears. All rights reserved.
//

import UIKit

class CheckRoutineTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - CheckRoutineTableViewController UITableViewDelegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Toggles cell accessoryType from checkmark to none
        // Maybe refactor and have a custom accessoryType
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .checkmark{
                cell.accessoryType = .none
            }else {
                cell.accessoryType = .checkmark
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    // MARK: - CheckRoutineTableViewController UITableViewDataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "CheckroutineItem", for: indexPath)
        
        let label = cell.viewWithTag(100) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "I am the man"
        }else if indexPath.row == 1 {
            label.text = "Who provides"
        }else if indexPath.row == 2{
            label.text = "CAN you see me?"
        }
        
        
        
        return cell
    }

}


