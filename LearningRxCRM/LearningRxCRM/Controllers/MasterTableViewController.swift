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
    
    var myLoginViewController = LoginViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //removes additional blank lines after last cell
        self.tableView.tableFooterView = UIView();
        
    }
    
    //select first row by default (does not work if launched in portrait)
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if isLoadingTable && tableView.indexPathsForVisibleRows?.last?.row == indexPath.row {
            isLoadingTable = false
            tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: .none)
        }
    }
    
    
    //basic operations
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = tableData[indexPath.row]
        return cell
    }
    
    //select -> go there (can add some custom values if needed later)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (myLoginViewController.loggedIn == false){
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
            
            if (myLoginViewController.loggedIn == true){
                
                tableData = ["Home","Survey","Events","Login"]
                
                switch indexPath.row {
                case 0:
                    self.performSegue(withIdentifier: "toHome", sender: nil)
                case 1:
                    self.performSegue(withIdentifier: "toSurvey", sender: nil)
                case 2:
                    self.performSegue(withIdentifier: "toEvents", sender: nil)
                case 3:
                    self.performSegue(withIdentifier: "toLogin", sender: nil)
                default:
                    break
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
