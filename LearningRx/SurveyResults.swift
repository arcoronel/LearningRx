//
//  SurveyResults.swift
//  LearningRx
//
//  Created by Jake man on 11/2/16.
//  Copyright © 2016 LearningRx. All rights reserved.
//

import Foundation
import UIKit

class SurveyResultsViewController: UIViewController {
    var attSkills = String()
    var proSpeedSkills = String()
    var audProSkills = String()
    var memSkills = String()
    var visProSkills = String()
    var logAndReasoningSkills = String()
    var senMotorSkills = String()
    var oppBehavior = String()
    var workOrAcaPerformance = String()
    var person = String()
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var personlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lbl1.text = attSkills
        lbl2.text = proSpeedSkills
        lbl3.text = audProSkills
        lbl4.text = memSkills
        lbl5.text = visProSkills
        lbl6.text = logAndReasoningSkills
        lbl7.text = senMotorSkills
        lbl8.text = oppBehavior
        lbl9.text = workOrAcaPerformance
        navigationItem.hidesBackButton = true
        personlbl.text = "You Choose: " + person
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
