//
//  Survey.swift
//  LearningRx
//
//  Created by Jake man on 10/26/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

func selectedButton(selected: Int,btn1: UIButton,btn2: UIButton,btn3: UIButton,btn4: UIButton,btn5: UIButton) {
    if selected == 1 {
        btn1.backgroundColor = UIColor.black
        btn2.backgroundColor = UIColor.white
        btn3.backgroundColor = UIColor.white
        btn4.backgroundColor = UIColor.white
        btn5.backgroundColor = UIColor.white
    }
    else if selected == 2 {
        btn1.backgroundColor = UIColor.white
        btn2.backgroundColor = UIColor.black
        btn3.backgroundColor = UIColor.white
        btn4.backgroundColor = UIColor.white
        btn5.backgroundColor = UIColor.white
    }
    else if selected == 3 {
        btn1.backgroundColor = UIColor.white
        btn2.backgroundColor = UIColor.white
        btn3.backgroundColor = UIColor.black
        btn4.backgroundColor = UIColor.white
        btn5.backgroundColor = UIColor.white
    }
    else if selected == 4 {
        btn1.backgroundColor = UIColor.white
        btn2.backgroundColor = UIColor.white
        btn3.backgroundColor = UIColor.white
        btn4.backgroundColor = UIColor.black
        btn5.backgroundColor = UIColor.white
    }
    else if selected == 5 {
        btn1.backgroundColor = UIColor.white
        btn2.backgroundColor = UIColor.white
        btn3.backgroundColor = UIColor.white
        btn4.backgroundColor = UIColor.white
        btn5.backgroundColor = UIColor.black
    }
}

class SurveyViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //var yAxis = 100
        //for buttonId in 1...5 {
        //   let button = UIButton(frame: CGRect(x: 100, y: yAxis, width: 30, height: 30))
        //    button.backgroundColor = UIColor.white
        //    button.addTarget(self, action: #selector(buttonPressed), for: UIControlEvents.touchUpInside)
        //    button
        //    button.tag = buttonId
        //    yAxis = yAxis+50
        //    self.view.addSubview(button)
        //}
    }
    //func buttonPressed(sender: UIButton){
    //    selectedButton(selected: 1, btn1: button1, btn2: button2, btn3: button3, btn4: button4, btn5: button5)
    
    //}
    
    @IBAction func button1Pressed(_ sender: AnyObject) {
        selectedButton(selected: 1, btn1: button1, btn2: button2, btn3: button3, btn4: button4, btn5: button5)
    }
    @IBAction func button2Pressed(_ sender: AnyObject) {
        selectedButton(selected: 2, btn1: button1, btn2: button2, btn3: button3, btn4: button4, btn5: button5)
    }
    @IBAction func button3Pressed(_ sender: AnyObject) {
        selectedButton(selected: 3, btn1: button1, btn2: button2, btn3: button3, btn4: button4, btn5: button5)
    }
    @IBAction func button4Pressed(_ sender: AnyObject) {
        selectedButton(selected: 4, btn1: button1, btn2: button2, btn3: button3, btn4: button4, btn5: button5)
    }
    @IBAction func button5Pressed(_ sender: AnyObject) {
        selectedButton(selected: 5, btn1: button1, btn2: button2, btn3: button3, btn4: button4, btn5: button5)
    }
    
}
