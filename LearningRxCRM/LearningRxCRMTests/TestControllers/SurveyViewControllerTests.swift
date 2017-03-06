//
//  SurveyViewControllerTests.swift
//  LearningRxCRM
//
//  Created by antiglow on 3/5/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//
//  Caleb Wood

import XCTest

@testable import LearningRxCRM

class SurveyViewControllerTests: XCTestCase {
    
    
    var sut: SurveyViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "SurveyVC") as! SurveyViewController
        _ = sut.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    // Test if Survey View Controller has all the needed UI elements
    func testSurveyVC_HasSegmentedControl() {
        XCTAssertNotNil(sut.QAgree)
    }
    
    func testSurveyVC_HasButtons() {
        XCTAssertNotNil(sut.Back)
        XCTAssertNotNil(sut.Next)
    }
    
    func testSurveyVC_HasQuestionLabel() {
        XCTAssertNotNil(sut.QText)
    }
    
    func testSurveyVC_HasProgressBar() {
        XCTAssertNotNil(sut.Progress)
    }
    
    //Test if SurveyVC can get the next question
    func testSurveyVC_CanGetNextQuestion() {
        sut.Next.sendActions(for: .touchUpInside)
        XCTAssert(sut.QText.text == sut.surveyData.getQuestions()[1].question)
        XCTAssert(sut.currentQuestion == 1)
    }
    
    
    // Check if the next button changes on the last question to "To Results"
    func testSurveyVC_NextButtonChangesTextOnLastQuestion() {
        sut.currentQuestion = sut.surveyData.getQuestions().count - 2
        sut.Next.sendActions(for: .touchUpInside)
        XCTAssert(sut.Next.currentTitle! == "To Results")
    }
    
    
    
    // Very Long Test to Check Metric Gathering
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
    func testSurveyVC_MetricGathering() {
        var skillsDict: [String: Int] = [
        "attentionSkills": 0,
        "proccessingSpeedSkills": 0,
        "auditoryProcessiongSkills": 0,
        "memorySkills": 0,
        "workOrAcadamicPreformance": 0,
        "visualProcessingSkills": 0,
        "logicAndReasoningSkills": 0,
        "sensoryMotorSkills": 0,
        "oppositionalBehavior": 0
        ]
        
        let questions = sut.surveyData.getQuestions()
        
        var val: Int!
        
        for i in questions {
            sut.QAgree.selectedSegmentIndex = randRange(lower: 0, upper: 4)
            val = sut.QAgree.selectedSegmentIndex
            print(sut.QAgree.selectedSegmentIndex)
            sut.Next.sendActions(for: .touchUpInside)
            
            //run function to check if question was applied to the right metric
            XCTAssert(runQuestion(questionOptions: i.applicationArea, dict: skillsDict, selectedValue: val))
            
            //update skillsDict
            skillsDict["attentionSkills"] = sut.attentionSkills
            skillsDict["proccessingSpeedSkills"] = sut.proccessingSpeedSkills
            skillsDict["auditoryProcessiongSkills"] = sut.auditoryProcessiongSkills
            skillsDict["memorySkills"] = sut.memorySkills
            skillsDict["workOrAcadamicPreformance"] = sut.workOrAcadamicPreformance
            skillsDict["visualProcessingSkills"] = sut.visualProcessingSkills
            skillsDict["logicAndReasoningSkills"] = sut.logicAndReasoningSkills
            skillsDict["sensoryMotorSkills"] = sut.sensoryMotorSkills
            skillsDict["oppositionalBehavior"] = sut.oppositionalBehavior
        }
        
    }
    
    //for geting a number in a range
    func randRange (lower: Int , upper: Int) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
    
    func runQuestion(questionOptions: [Int], dict: [String: Int], selectedValue: Int) -> Bool {
        for i in questionOptions {
            switch(i) {
            case 1:
                if (sut.attentionSkills != selectedValue + dict["attentionSkills"]!) {
                    return false
                }
            case 2:
                if (sut.proccessingSpeedSkills != selectedValue + dict["proccessingSpeedSkills"]!) {
                    return false
                }
            case 3:
                if (sut.auditoryProcessiongSkills != selectedValue + dict["auditoryProcessiongSkills"]!) {
                    return false
                }
            case 4:
                if (sut.memorySkills != selectedValue + dict["memorySkills"]!) {
                    return false
                }
            case 5:
                if (sut.workOrAcadamicPreformance != selectedValue + dict["workOrAcadamicPreformance"]!) {
                    return false
                }
            case 6:
                if (sut.visualProcessingSkills != selectedValue + dict["visualProcessingSkills"]!) {
                    return false
                }
            case 7:
                if (sut.logicAndReasoningSkills != selectedValue + dict["logicAndReasoningSkills"]!) {
                    return false
                }
            case 8:
                if (sut.sensoryMotorSkills != selectedValue + dict["sensoryMotorSkills"]!) {
                    return false
                }
            case 9:
                if (sut.oppositionalBehavior != selectedValue + dict["oppositionalBehavior"]!) {
                    return false
                }
            default:
                return false
            }
        }
        return true
    }
}
