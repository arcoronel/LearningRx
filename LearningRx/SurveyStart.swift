//
//  SurveyStart.swift
//  LearningRx
//
//  Created by Jacob Manzanares on 11/3/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

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
    
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    var person: String = "Self"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedButton(selected: 1, button1: btn1, button2: btn2, button3: btn3)
        person = "Self"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let svc  : SurveyViewController = segue.destination as! SurveyViewController
        svc.person = person
    }
    
    @IBAction func btn1Pressed(_ sender: AnyObject) {
        selectedButton(selected: 1, button1: btn1, button2: btn2, button3: btn3)
        person = "Self"
    }
    @IBAction func btn2Pressed(_ sender: AnyObject) {
        selectedButton(selected: 2, button1: btn1, button2: btn2, button3: btn3)
        person = "Parent"
    }
    @IBAction func btn3Pressed(_ sender: AnyObject) {
        selectedButton(selected: 3, button1: btn1, button2: btn2, button3: btn3)
        person = "Other"
    }
    
}

