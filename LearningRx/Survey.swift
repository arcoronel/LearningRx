//
//  Survey.swift
//  LearningRx
//
//  Created by Jake man on 10/26/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

func selectedButton(selected: Int,button1: UIButton,button2: UIButton,button3: UIButton,button4: UIButton,button5: UIButton) {
    if selected == 1 {
        button1.backgroundColor = UIColor.black
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.white
        button4.backgroundColor = UIColor.white
        button5.backgroundColor = UIColor.white
    }
    else if selected == 2 {
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.black
        button3.backgroundColor = UIColor.white
        button4.backgroundColor = UIColor.white
        button5.backgroundColor = UIColor.white
    }
    else if selected == 3 {
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.black
        button4.backgroundColor = UIColor.white
        button5.backgroundColor = UIColor.white
    }
    else if selected == 4 {
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.white
        button4.backgroundColor = UIColor.black
        button5.backgroundColor = UIColor.white
    }
    else if selected == 5 {
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.white
        button4.backgroundColor = UIColor.white
        button5.backgroundColor = UIColor.black
    }
    else if selected == 6 {
        button1.backgroundColor = UIColor.white
        button2.backgroundColor = UIColor.white
        button3.backgroundColor = UIColor.white
        button4.backgroundColor = UIColor.white
        button5.backgroundColor = UIColor.white
    }
}

class SurveyViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btn16: UIButton!
    @IBOutlet weak var btn17: UIButton!
    @IBOutlet weak var btn18: UIButton!
    @IBOutlet weak var btn19: UIButton!
    @IBOutlet weak var btn20: UIButton!
    @IBOutlet weak var btn21: UIButton!
    @IBOutlet weak var btn22: UIButton!
    @IBOutlet weak var btn23: UIButton!
    @IBOutlet weak var btn24: UIButton!
    @IBOutlet weak var btn25: UIButton!
    @IBOutlet weak var btn26: UIButton!
    @IBOutlet weak var btn27: UIButton!
    @IBOutlet weak var btn28: UIButton!
    @IBOutlet weak var btn29: UIButton!
    @IBOutlet weak var btn30: UIButton!
    @IBOutlet weak var btn31: UIButton!
    @IBOutlet weak var btn32: UIButton!
    @IBOutlet weak var btn33: UIButton!
    @IBOutlet weak var btn34: UIButton!
    @IBOutlet weak var btn35: UIButton!
    @IBOutlet weak var btn36: UIButton!
    @IBOutlet weak var btn37: UIButton!
    @IBOutlet weak var btn38: UIButton!
    @IBOutlet weak var btn39: UIButton!
    @IBOutlet weak var btn40: UIButton!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    
    var q1: Int = 0
    var q2: Int = 0
    var q3: Int = 0
    var q4: Int = 0
    var q5: Int = 0
    var q6: Int = 0
    var q7: Int = 0
    var q8: Int = 0
    var attentionSkills: Int = 0
    var proccessingSpeedSkills: Int = 0
    var auditoryProcessingSkills: Int = 0
    var memorySkills: Int = 0
    var visualProcessingSkills: Int = 0
    var logicAndReasoningSkills: Int = 0
    var sensoryMotorSkills: Int = 0
    var oppositionalBehavior: Int = 0
    var workOrAcademicPerformance: Int = 0
    var qSet: Int = 0
    var questions: [String] = ["Distracted from the task at hand","Reading is slow","Poor reading comprehension","Often asks to have things repeated","has difficulty maintaining attention","Slow, deliberate speech", "Makes spelling errors in written assignments","Has difficulty remembering telephone numbers"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl1.text = questions[0]
        lbl2.text = questions[1]
        lbl3.text = questions[2]
        lbl4.text = questions[3]
        lbl5.text = questions[4]
        lbl6.text = questions[5]
        lbl7.text = questions[6]
        lbl8.text = questions[7]
        
    }
    
    @IBAction func button1Pressed(_ sender: AnyObject) {
        if sender as! NSObject == btn1 {
            selectedButton(selected: 1, button1: btn1, button2: btn2, button3: btn3, button4: btn4, button5: btn5)
            q1 = 0
        }
        else if sender as! NSObject == btn6 {
            selectedButton(selected: 1, button1: btn6, button2: btn7, button3: btn8, button4: btn9, button5: btn10)
            q2 = 0
        }
        else if sender as! NSObject == btn11 {
            selectedButton(selected: 1, button1: btn11, button2: btn12, button3: btn13, button4: btn14, button5: btn15)
            q3 = 0
        }
        else if sender as! NSObject == btn16 {
            selectedButton(selected: 1, button1: btn16, button2: btn17, button3: btn18, button4: btn19, button5: btn20)
            q4 = 0
        }
        else if sender as! NSObject == btn21 {
            selectedButton(selected: 1, button1: btn21, button2: btn22, button3: btn23, button4: btn24, button5: btn25)
            q5 = 0
        }
        else if sender as! NSObject == btn26 {
            selectedButton(selected: 1, button1: btn26, button2: btn27, button3: btn28, button4: btn29, button5: btn30)
            q6 = 0
        }
        else if sender as! NSObject == btn31 {
            selectedButton(selected: 1, button1: btn31, button2: btn32, button3: btn33, button4: btn34, button5: btn35)
            q7 = 0
        }
        else if sender as! NSObject == btn36 {
            selectedButton(selected: 1, button1: btn36, button2: btn37, button3: btn38, button4: btn39, button5: btn40)
            q8 = 0
        }
        
    }
    @IBAction func button2Pressed(_ sender: AnyObject) {
        if sender as! NSObject == btn2 {
            selectedButton(selected: 2, button1: btn1, button2: btn2, button3: btn3, button4: btn4, button5: btn5)
            q1 = 1
        }
        else if sender as! NSObject == btn7 {
            selectedButton(selected: 2, button1: btn6, button2: btn7, button3: btn8, button4: btn9, button5: btn10)
            q2 = 1
        }
        else if sender as! NSObject == btn12 {
            selectedButton(selected: 2, button1: btn11, button2: btn12, button3: btn13, button4: btn14, button5: btn15)
            q3 = 1
        }
        else if sender as! NSObject == btn17 {
            selectedButton(selected: 2, button1: btn16, button2: btn17, button3: btn18, button4: btn19, button5: btn20)
            q4 = 1
        }
        else if sender as! NSObject == btn22 {
            selectedButton(selected: 2, button1: btn21, button2: btn22, button3: btn23, button4: btn24, button5: btn25)
            q5 = 1
        }
        else if sender as! NSObject == btn27 {
            selectedButton(selected: 2, button1: btn26, button2: btn27, button3: btn28, button4: btn29, button5: btn30)
            q6 = 1
        }
        else if sender as! NSObject == btn32 {
            selectedButton(selected: 2, button1: btn31, button2: btn32, button3: btn33, button4: btn34, button5: btn35)
            q7 = 1
        }
        else if sender as! NSObject == btn37 {
            selectedButton(selected: 2, button1: btn36, button2: btn37, button3: btn38, button4: btn39, button5: btn40)
            q8 = 1
        }
        
    }
    @IBAction func button3Pressed(_ sender: AnyObject) {
        if sender as! NSObject == btn3 {
            selectedButton(selected: 3, button1: btn1, button2: btn2, button3: btn3, button4: btn4, button5: btn5)
            q1 = 2
        }
        else if sender as! NSObject == btn8 {
            selectedButton(selected: 3, button1: btn6, button2: btn7, button3: btn8, button4: btn9, button5: btn10)
            q2 = 2
        }
        else if sender as! NSObject == btn13 {
            selectedButton(selected: 3, button1: btn11, button2: btn12, button3: btn13, button4: btn14, button5: btn15)
            q3 = 2
        }
        else if sender as! NSObject == btn18 {
            selectedButton(selected: 3, button1: btn16, button2: btn17, button3: btn18, button4: btn19, button5: btn20)
            q4 = 2
        }
        else if sender as! NSObject == btn23 {
            selectedButton(selected: 3, button1: btn21, button2: btn22, button3: btn23, button4: btn24, button5: btn25)
            q5 = 2
        }
        else if sender as! NSObject == btn28 {
            selectedButton(selected: 3, button1: btn26, button2: btn27, button3: btn28, button4: btn29, button5: btn30)
            q6 = 2
        }
        else if sender as! NSObject == btn33 {
            selectedButton(selected: 3, button1: btn31, button2: btn32, button3: btn33, button4: btn34, button5: btn35)
            q7 = 2
        }
        else if sender as! NSObject == btn38 {
            selectedButton(selected: 3, button1: btn36, button2: btn37, button3: btn38, button4: btn39, button5: btn40)
            q8 = 2
        }
        
    }
    @IBAction func button4Pressed(_ sender: AnyObject) {
        if sender as! NSObject == btn4 {
            selectedButton(selected: 4, button1: btn1, button2: btn2, button3: btn3, button4: btn4, button5: btn5)
            q1 = 3
        }
        else if sender as! NSObject == btn9 {
            selectedButton(selected: 4, button1: btn6, button2: btn7, button3: btn8, button4: btn9, button5: btn10)
            q2 = 3
        }
        else if sender as! NSObject == btn14 {
            selectedButton(selected: 4, button1: btn11, button2: btn12, button3: btn13, button4: btn14, button5: btn15)
            q3 = 3
        }
        else if sender as! NSObject == btn19 {
            selectedButton(selected: 4, button1: btn16, button2: btn17, button3: btn18, button4: btn19, button5: btn20)
            q4 = 3
        }
        else if sender as! NSObject == btn24 {
            selectedButton(selected: 4, button1: btn21, button2: btn22, button3: btn23, button4: btn24, button5: btn25)
            q5 = 3
        }
        else if sender as! NSObject == btn29 {
            selectedButton(selected: 4, button1: btn26, button2: btn27, button3: btn28, button4: btn29, button5: btn30)
            q6 = 3
        }
        else if sender as! NSObject == btn34 {
            selectedButton(selected: 4, button1: btn31, button2: btn32, button3: btn33, button4: btn34, button5: btn35)
            q7 = 3
        }
        else if sender as! NSObject == btn39 {
            selectedButton(selected: 4, button1: btn36, button2: btn37, button3: btn38, button4: btn39, button5: btn40)
            q8 = 3
        }
        
    }
    @IBAction func button5Pressed(_ sender: AnyObject) {
        if sender as! NSObject == btn5 {
            selectedButton(selected: 5, button1: btn1, button2: btn2, button3: btn3, button4: btn4, button5: btn5)
            q1 = 4
        }
        else if sender as! NSObject == btn10 {
            selectedButton(selected: 5, button1: btn6, button2: btn7, button3: btn8, button4: btn9, button5: btn10)
            q2 = 4
        }
        else if sender as! NSObject == btn15 {
            selectedButton(selected: 5, button1: btn11, button2: btn12, button3: btn13, button4: btn14, button5: btn15)
            q3 = 4
        }
        else if sender as! NSObject == btn20 {
            selectedButton(selected: 5, button1: btn16, button2: btn17, button3: btn18, button4: btn19, button5: btn20)
            q4 = 4
        }
        else if sender as! NSObject == btn25 {
            selectedButton(selected: 5, button1: btn21, button2: btn22, button3: btn23, button4: btn24, button5: btn25)
            q5 = 4
        }
        else if sender as! NSObject == btn30 {
            selectedButton(selected: 5, button1: btn26, button2: btn27, button3: btn28, button4: btn29, button5: btn30)
            q6 = 4
        }
        else if sender as! NSObject == btn35 {
            selectedButton(selected: 5, button1: btn31, button2: btn32, button3: btn33, button4: btn34, button5: btn35)
            q7 = 4
        }
        else if sender as! NSObject == btn40 {
            selectedButton(selected: 5, button1: btn36, button2: btn37, button3: btn38, button4: btn39, button5: btn40)
            q8 = 4
        }
    }
    @IBAction func nextQuestions(_ sender: AnyObject) {
        if qSet <= 7 {
            selectedButton(selected: 6, button1: btn1, button2: btn2, button3: btn3, button4: btn4, button5: btn5)
            selectedButton(selected: 6, button1: btn6, button2: btn7, button3: btn8, button4: btn9, button5: btn10)
            selectedButton(selected: 6, button1: btn11, button2: btn12, button3: btn13, button4: btn14, button5: btn15)
            selectedButton(selected: 6, button1: btn16, button2: btn17, button3: btn18, button4: btn19, button5: btn20)
            selectedButton(selected: 6, button1: btn21, button2: btn22, button3: btn23, button4: btn24, button5: btn25)
            selectedButton(selected: 6, button1: btn26, button2: btn27, button3: btn28, button4: btn29, button5: btn30)
            selectedButton(selected: 6, button1: btn31, button2: btn32, button3: btn33, button4: btn34, button5: btn35)
            selectedButton(selected: 6, button1: btn36, button2: btn37, button3: btn38, button4: btn39, button5: btn40)
            if qSet == 0 || qSet == 1 || qSet == 2 || qSet == 3{
                attentionSkills = attentionSkills + q1 + q5
                proccessingSpeedSkills = proccessingSpeedSkills + q2 + q6
                auditoryProcessingSkills = auditoryProcessingSkills + q3 + q7
                memorySkills = memorySkills + q4 + q8
            }else if qSet == 4 || qSet == 5 || qSet == 6 || qSet == 7 {
                visualProcessingSkills = visualProcessingSkills + q1 + q5
                logicAndReasoningSkills = logicAndReasoningSkills + q2 + q6
                sensoryMotorSkills = sensoryMotorSkills + q3 + q7
                oppositionalBehavior = oppositionalBehavior + q4 + q8
            }
            qSet = qSet + 1
            if qSet == 8 {
                self.performSegue(withIdentifier: "surveyResultsSegue", sender: self)
            }
        }
    }
    
}
