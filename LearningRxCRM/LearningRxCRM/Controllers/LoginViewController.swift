//
//  LoginViewController.swift
//  LearningRxCRM
//
//  Created by antiglow on 2/26/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    var loggedIn = false
    
    weak var MasterTVC: MasterTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        //Back Button
        if let splitView = self.navigationController?.splitViewController, !splitView.isCollapsed {
            self.navigationItem.leftBarButtonItem = splitView.displayModeButtonItem
        }
        //Set Nav Title
        self.navigationItem.title = "Login"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LoginButton(_ sender: UIButton) {
        //grabs value of text boxes when button is pressed and tests them against a "functioning" password and username
        let inputUsername = username.text
        let inputPassword = password.text
        let functioningPassword = "admin"
        let functioningUsername = "admin"
        var correctUsername = false
        var correctPassword = false
        
        //lines 45-49 set up alerts to let the user know whether or not they logged in correctly
        let alertSuccessController = UIAlertController(title: "LearningRX", message: "Successfully Logged In", preferredStyle: UIAlertControllerStyle.alert)
        alertSuccessController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
        
        let alertIncorrectController = UIAlertController(title: "LearningRX", message: "Username And/Or Password Incorrect", preferredStyle: UIAlertControllerStyle.alert)
        alertIncorrectController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
        
        
        if (inputUsername == functioningUsername){
            //correct username
            correctUsername = true
        }
        else{
            correctUsername = false
        }
        
        if (inputPassword == functioningPassword){
            //correct password
            correctPassword = true
        }
        else{
            correctPassword = false
        }

        
        if (correctUsername && correctPassword){
            //logs in user
            loggedIn = true
            self.present(alertSuccessController, animated: true, completion: nil)
            
            //update MVC to logged in
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "setLoggedIn"), object: nil)
        }
        else{
            //lets user know they did not log in properly
            loggedIn = false
            self.present(alertIncorrectController, animated: true, completion: nil)
        }
        
    }
}
