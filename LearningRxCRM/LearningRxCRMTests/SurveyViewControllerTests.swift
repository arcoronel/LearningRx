//
//  SurveyViewControllerTests.swift
//  LearningRxCRM
//
//  Created by antiglow on 3/5/17.
//  Copyright © 2017 LearningRx. All rights reserved.
//

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
}
