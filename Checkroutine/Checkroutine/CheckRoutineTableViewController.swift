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
    
    
    
    // MARK: - CheckRoutineTableViewController UITableViewDataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "CheckroutineItem", for: indexPath)
        
        return cell 
    }

}
//
//extension CheckRoutineTableViewController: UITableViewDelegate{
//
//
//}
//
//extension CheckRoutineTableViewController: UITableViewDataSource{
//
//
//}

