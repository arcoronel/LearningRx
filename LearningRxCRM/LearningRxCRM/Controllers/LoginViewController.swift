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
            loggedIn = true
        }
    }
}
