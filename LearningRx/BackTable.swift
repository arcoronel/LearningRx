//
//  BackTable.swift
//  LearningRx
//
//  Created by Jake man on 11/22/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

class BackTableViewController: UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Home","Videos","Research","Survey","Notes"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableArray[indexPath.row], for: indexPath) 
        cell.textLabel?.text = TableArray[indexPath.row]
        return cell
    }
}
