//
//  SurveyViewController.swift
//  LearningRxCRM
//
//  Created by antiglow on 2/26/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {


    @IBOutlet weak var QText: UILabel!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var Back: UIButton!
    @IBOutlet weak var QAgree: UISegmentedControl!
    @IBOutlet weak var Progress: UIProgressView!
    
    var currentQuestion: Int = 1
    
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
 
    //Changed to an Array of tuples
    //Also this would be better suted to another controller or even a CSV uploadable file so the quesitons could be changed and uploaded by the user
    /* 1 = attentionSkills
     * 2 = proccessingSpeedSkills
     * 3 = auditoryProcessiongSkills
     * 4 = memorySkills
     * 5 = workOrAcadamicPreformance
     * 6 = visualProcessingSkills
     * 7 = logicAndReasoningSkills
     * 8 = sensoryMotorSkills
     * 9 = oppositionalBehavior
    */
    
    var questions: [(question: String,  applicationArea: [Int])] = [
        ("Distracted from the task at hand", [1]),
        ("Reading is slow", [2]),
        ("Poor reading comprehension", [3,5]),
        ("Often asks to have things repeated", [4]),
        ("Has difficulty maintaining attention", [1]),
        ("Slow, deliberate speech", [2]),
        ("Makes spelling errors in written assignments", [3]),
        ("Has difficulty remembering telephone numbers", [4]),
        ("Has difficulty organizing activities", [1]),
        ("Completes math assignments slowly", [2]),
        ("Has difficulty sounding out unknown words", [3]),
        ("Needs to look multiple times when copying", [4]),
        ("Has difficulty doing two things at once", [1]),
        ("Takes a long time to complete tasks", [2]),
        ("Oral reading is slow or choppy", [3]),
        ("Has difficulty following verbal directions", [4,5]),
        ("Avoids prolonged mental effort", [1]),
        ("Generally does things slowly", [2,5]),
        ("Needs words repeated when taking spelling tests", [3]),
        ("Has difficulty recalling stories and jokes", [4]),
        ("Has difficulty remembering things just heard", [1]),
        ("Is often one of the last to complete tasks", [2]),
        ("Avoids reading", [3]),
        ("Gets poor test results when being tested for facts", [4,5]),
        ("Is impulsive", [1]),
        ("Avoids or has difficulty with video games", [2]),
        ("Has difficulty finding words for verbal expression", [3]),
        ("Needs to restudy or reread materials", [4]),
        ("Has poor study or work habits", [1]),
        ("Writing assignments take too long", [2,5]),
        ("Has difficulty reading or spelling phonetically", [3]),
        ("Has problems remembering names", [4]),
        ("Poor sense of direction/map reading skills", [6]),
        ("Poor math grades or test scores", [7,5]),
        ("Has poor handwriting", [8]),
        ("Swears or uses obscene language", [9]),
        ("Jigsaw puzzles are difficult or avoided", [6]),
        ("Has difficulty understanding stories or jokes", [7]),
        ("Squints, blinks, or rubs eyes when reading", [8]),
        ("Loses temper", [9]),
        ("Misreads similar words", [6]),
        ("Thoughts and materials are poorly organized", [7]),
        ("Has difficulty hearing", [8]),
        ("Argues with authority figures", [9]),
        ("Poor at or dislikes drawing", [6]),
        ("Poor at or avoids games like chess or checkers", [7]),
        ("Has poor coordination", [8]),
        ("Refuses requests or disobeys rules", [9]),
        ("Has difficulty with word math problems", [6]),
        ("Has problems seeing the â€œbig pictureâ€", [7]),
        ("Has speech difficulties", [8]),
        ("Deliberately does things that annoy others", [9]),
        ("Has difficulty creating pictures in the mind", [6]),
        ("Takes a while to catch on to new things", [7,5]),
        ("Complains about eye strain or fatigue", [8]), 
        ("Blames others for mistakes", [9]), 
        ("Lacks creativity or imagination in writing", [6]),
        ("Doesnâ€™t like card games", [7]), 
        ("Is bothered by loud sounds", [8]), 
        ("Is angry and resentful", [9]), 
        ("Poor at problem solving", [6]), 
        ("Has difficulty planning steps to solve problems", [7]), 
        ("Skips words or lines when reading", [8]), 
        ("Holds grudges or seeks revenge", [9,5])
    ]
    
    var agreementText: [String] = [
        "Strongly Disagree",
        "Disagree",
        "In the Middle",
        "Agree",
        "Strongly Agree"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
