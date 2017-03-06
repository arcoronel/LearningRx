//
//  SurveyResultsViewController.swift
//  LearningRxCRM
//
//  Created by antiglow on 2/28/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//
//  Caleb Wood

import UIKit

class SurveyResultsViewController: UIViewController {
    
    @IBOutlet weak var attentionSkillsLabel: UILabel!
    @IBOutlet weak var proccessingSpeedSkillsLabel: UILabel!
    @IBOutlet weak var auditoryProcessingSkillsLabel: UILabel!
    @IBOutlet weak var memorySkillsLabel: UILabel!
    @IBOutlet weak var workOrAcadmicPreformanceLabel: UILabel!
    @IBOutlet weak var visualProcessingSkillsLabel: UILabel!
    @IBOutlet weak var logicAndReasoningSkillsLabel: UILabel!
    @IBOutlet weak var sensoryMotorSkillsLabel: UILabel!
    @IBOutlet weak var oppsitionalBehaviorLabel: UILabel!
    
    
    
    var attentionSkills = String()
    var proccessingSpeedSkills = String()
    var auditoryProcessingSkills = String()
    var memorySkills = String()
    var workOrAcadamicPreformance = String()
    var visualProcessingSkills = String()
    var logicAndReasoningSkills = String()
    var sensoryMotorSkills = String()
    var oppositionalBehavior = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view the stuffs
        attentionSkillsLabel.text = "Attention Skills: " + attentionSkills
        proccessingSpeedSkillsLabel.text = "Processing Speed: " + proccessingSpeedSkills
        auditoryProcessingSkillsLabel.text = "Auditory Processing: " + auditoryProcessingSkills
        memorySkillsLabel.text = "Memory Skills: " + memorySkills
        workOrAcadmicPreformanceLabel.text = "Work Preformance: " + workOrAcadamicPreformance
        visualProcessingSkillsLabel.text = "Visual Processing: " + visualProcessingSkills
        logicAndReasoningSkillsLabel.text = "Logic/Reasoning: " + logicAndReasoningSkills
        sensoryMotorSkillsLabel.text = "Sensory/Motor: " + sensoryMotorSkills
        oppsitionalBehaviorLabel.text = "Oppsitional Behavior: " + oppositionalBehavior
        
        
        if let splitView = self.navigationController?.splitViewController, !splitView.isCollapsed {
            self.navigationItem.leftBarButtonItem = splitView.displayModeButtonItem
        }
        //Set Nav Title
        self.navigationItem.title = "Results"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
