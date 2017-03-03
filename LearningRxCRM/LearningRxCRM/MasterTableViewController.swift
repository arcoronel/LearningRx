//
//  MasterTableViewController.swift
//  LearningRxCRM
//
//  Created by antiglow on 2/25/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//  Caleb Wood
//

import UIKit

class MasterTableViewController: UITableViewController {
    
    //array of static menu items
    var tableData = ["Home","Survey","Login"]
    var isLoadingTable = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //removes additional blank lines after last cell
        self.tableView.tableFooterView = UIView();
        
    }
    
    //select first row by default (does not work if launched in portrait gurr)
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if isLoadingTable && tableView.indexPathsForVisibleRows?.last?.row == indexPath.row {
            isLoadingTable = false
            tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: .none)
        }
    }
    
    
    //basic shit below
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = tableData[indexPath.row]
        return cell
    }
    
    //select -> go there (we can add some custom shit too if we want)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "toHome", sender: nil)
        case 1:
            self.performSegue(withIdentifier: "toSurvey", sender: nil)
        case 2:
            self.performSegue(withIdentifier: "toLogin", sender: nil)
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
