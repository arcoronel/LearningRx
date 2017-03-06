//
//  SurveyViewController.swift
//  LearningRxCRM
//
//  Created by antiglow on 2/26/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//
// Caleb Wood

import UIKit

class SurveyViewController: UIViewController {


    @IBOutlet weak var QText: UILabel!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var Back: UIButton!
    @IBOutlet weak var QAgree: UISegmentedControl!
    @IBOutlet weak var Progress: UIProgressView!
    
    var currentQuestion: Int = 0
    
    //model import (from SurveyModel.swift)
    var surveyData = SurveyData()
    var questions: [(question: String, applicationArea: [Int])]!
    
    //metrics
    var attentionSkills: Int = 0
    var proccessingSpeedSkills: Int = 0
    var auditoryProcessiongSkills: Int = 0
    var memorySkills: Int = 0
    var workOrAcadamicPreformance: Int = 0
    var visualProcessingSkills: Int = 0
    var logicAndReasoningSkills: Int = 0
    var sensoryMotorSkills: Int = 0
    var oppositionalBehavior: Int = 0
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let agreementText = surveyData.getAgreementOptions()
        questions = surveyData.getQuestions()
        
        //Text for agreement buttons
        for (index, text) in agreementText.enumerated() {
            QAgree.setTitle(text, forSegmentAt: index)
        }
        
        //set initial values
        QText.text = questions[currentQuestion].question
        Progress.progress = Float(currentQuestion) / Float(questions.count)
        QAgree.selectedSegmentIndex = 0
        
        
        //get back button
        if let splitView = self.navigationController?.splitViewController, !splitView.isCollapsed {
            self.navigationItem.leftBarButtonItem = splitView.displayModeButtonItem
        }
        self.navigationItem.title = "Survey"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc : SurveyResultsViewController = segue.destination as! SurveyResultsViewController
        vc.attentionSkills = String(attentionSkills)
        vc.proccessingSpeedSkills = String(proccessingSpeedSkills)
        vc.auditoryProcessingSkills = String(auditoryProcessiongSkills)
        vc.memorySkills = String(memorySkills)
        vc.sensoryMotorSkills = String(sensoryMotorSkills)
        vc.workOrAcadamicPreformance = String(workOrAcadamicPreformance)
        vc.visualProcessingSkills = String(visualProcessingSkills)
        vc.logicAndReasoningSkills = String(logicAndReasoningSkills)
        vc.oppositionalBehavior = String(oppositionalBehavior)
    }

    //on next adds resutls, updates progress, sets current question and checks if you are on last question or going to results
    @IBAction func nextQuestion(sender: UIButton) {
        questions = surveyData.getQuestions()
        //change button text when on last question
        if (currentQuestion == questions.count - 2) {
            Next.setTitle("To Results", for: UIControlState.normal)
        }
        
        caculateData(selector: questions[currentQuestion].applicationArea, value: QAgree.selectedSegmentIndex)
        Progress.progress = Float(currentQuestion) / Float(questions.count)
        currentQuestion = currentQuestion + 1
        
        //segue on to results click
        if (currentQuestion == questions.count) {
            self.performSegue(withIdentifier: "toSurveyResults", sender: nil)
            
        } else {
            QText.text = questions[currentQuestion].question
            QAgree.selectedSegmentIndex = 0
        }
    }
    
    // Epic back button code to go here
    @IBAction func prevQuestion(sender: UIButton) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //takes the array from the tuple and the value selected to caculate the results
    func caculateData(selector: [Int], value: Int) {
        for i in selector {
            switch(i) {
            case 1:
                attentionSkills = attentionSkills + value
                break
            case 2:
                proccessingSpeedSkills = proccessingSpeedSkills + value
                break
            case 3:
                auditoryProcessiongSkills = auditoryProcessiongSkills + value
                break
            case 4:
                memorySkills = memorySkills + value
                break
            case 5:
                workOrAcadamicPreformance = workOrAcadamicPreformance + value
                break
            case 6:
                visualProcessingSkills = visualProcessingSkills + value
                break
            case 7:
                logicAndReasoningSkills = logicAndReasoningSkills + value
                break
            case 8:
                sensoryMotorSkills = sensoryMotorSkills + value
                break
            case 9:
                oppositionalBehavior = oppositionalBehavior + value
            default:
            break
            }
        }
    }
}
