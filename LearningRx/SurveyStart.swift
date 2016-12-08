//
//  SurveyStart.swift
//  LearningRx
//
//  Created by Jacob Manzanares on 11/3/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

//Function to allow buttons to act like radio buttons
func selectedButton(selected: Int,button1: UIButton,button2: UIButton,button3: UIButton) {
    if selected == 1 {
        button1.backgroundColor = UIColor.black
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.white
    }
    else if selected == 2 {
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.black
        button3.backgroundColor = UIColor.white
    }
    else if selected == 3 {
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.black
    }
}

class SurveyStartViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var openMenu: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    var person: String = "Self"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //default for when start survey is started
        selectedButton(selected: 1, button1: btn1, button2: btn2, button3: btn3)
        person = "Self"
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        openMenu.addTarget(revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //send data to survery
        let svc  : SurveyViewController = segue.destination as! SurveyViewController
        svc.person = person
    }
    
    @IBAction func btn1Pressed(_ sender: AnyObject) {
        //when button 1 of 3 is selected change color to black and the rest to white and set person variable
        selectedButton(selected: 1, button1: btn1, button2: btn2, button3: btn3)
        person = "Self"
    }
    @IBAction func btn2Pressed(_ sender: AnyObject) {
        //when button 3 of 3 is selected change color to black and the rest to white and set person variable
        selectedButton(selected: 2, button1: btn1, button2: btn2, button3: btn3)
        person = "Parent"
    }
    @IBAction func btn3Pressed(_ sender: AnyObject) {
        //when button 3 of 3 is selected change color to black and the rest to white and set person variable
        selectedButton(selected: 3, button1: btn1, button2: btn2, button3: btn3)
        person = "Other"
    }
    
}

